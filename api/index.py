import os
from contextlib import contextmanager
from typing import Optional

import psycopg2
import psycopg2.extras
from fastapi import Depends, FastAPI, HTTPException, Query, Request

app = FastAPI(title="SRT Tool API", version="1.0.0")

DATABASE_URL = os.environ.get("DATABASE_URL", "")
API_KEY = os.environ.get("API_KEY", "")


@contextmanager
def get_db():
    conn = psycopg2.connect(DATABASE_URL)
    try:
        yield conn
    finally:
        conn.close()


def verify_api_key(request: Request):
    key = request.headers.get("X-API-Key")
    if not key or key != API_KEY:
        raise HTTPException(status_code=401, detail="Invalid or missing API key")


@app.get("/")
def health():
    return {"status": "ok", "service": "srt-tool-api"}


@app.get("/annotations")
def get_annotations(
    project_id: Optional[str] = Query(None),
    annotator_id: Optional[str] = Query(None),
    status: Optional[str] = Query(None),
    created_after: Optional[str] = Query(None),
    created_before: Optional[str] = Query(None),
    limit: int = Query(50, ge=1, le=500),
    offset: int = Query(0, ge=0),
    _auth: None = Depends(verify_api_key),
):
    query = "SELECT * FROM annotations WHERE 1=1"
    params = []

    if project_id:
        query += " AND project_id = %s"
        params.append(project_id)
    if annotator_id:
        query += " AND annotator_id = %s"
        params.append(annotator_id)
    if status:
        query += " AND status = %s"
        params.append(status)
    if created_after:
        query += " AND created_at >= %s"
        params.append(created_after)
    if created_before:
        query += " AND created_at <= %s"
        params.append(created_before)

    query += " ORDER BY created_at DESC LIMIT %s OFFSET %s"
    params.extend([limit, offset])

    with get_db() as conn:
        with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
            cur.execute(query, params)
            rows = cur.fetchall()

    return [_serialize_row(r) for r in rows]


@app.get("/completions")
def get_completions(
    annotation_id: Optional[str] = Query(None),
    annotator_id: Optional[str] = Query(None),
    project_id: Optional[str] = Query(None),
    completed_after: Optional[str] = Query(None),
    completed_before: Optional[str] = Query(None),
    limit: int = Query(50, ge=1, le=500),
    offset: int = Query(0, ge=0),
    _auth: None = Depends(verify_api_key),
):
    if project_id:
        query = """
            SELECT c.* FROM completions c
            JOIN annotations a ON c.annotation_id = a.annotation_id
            WHERE a.project_id = %s
        """
        params = [project_id]
    else:
        query = "SELECT * FROM completions WHERE 1=1"
        params = []

    if annotation_id:
        query += " AND annotation_id = %s"
        params.append(annotation_id)
    if annotator_id:
        query += " AND annotator_id = %s" if "c.*" not in query else " AND c.annotator_id = %s"
        params.append(annotator_id)
    if completed_after:
        query += " AND completed_at >= %s" if "c.*" not in query else " AND c.completed_at >= %s"
        params.append(completed_after)
    if completed_before:
        query += " AND completed_at <= %s" if "c.*" not in query else " AND c.completed_at <= %s"
        params.append(completed_before)

    order_col = "c.completed_at" if "c.*" in query else "completed_at"
    query += f" ORDER BY {order_col} DESC LIMIT %s OFFSET %s"
    params.extend([limit, offset])

    with get_db() as conn:
        with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
            cur.execute(query, params)
            rows = cur.fetchall()

    return [_serialize_row(r) for r in rows]


@app.get("/reviews")
def get_reviews(
    completion_id: Optional[str] = Query(None),
    reviewer_id: Optional[str] = Query(None),
    project_id: Optional[str] = Query(None),
    reviewed_after: Optional[str] = Query(None),
    reviewed_before: Optional[str] = Query(None),
    limit: int = Query(50, ge=1, le=500),
    offset: int = Query(0, ge=0),
    _auth: None = Depends(verify_api_key),
):
    if project_id:
        query = """
            SELECT r.* FROM reviews r
            JOIN completions c ON r.completion_id = c.completion_id
            JOIN annotations a ON c.annotation_id = a.annotation_id
            WHERE a.project_id = %s
        """
        params = [project_id]
    else:
        query = "SELECT * FROM reviews WHERE 1=1"
        params = []

    if completion_id:
        query += " AND completion_id = %s" if "r.*" not in query else " AND r.completion_id = %s"
        params.append(completion_id)
    if reviewer_id:
        query += " AND reviewer_id = %s" if "r.*" not in query else " AND r.reviewer_id = %s"
        params.append(reviewer_id)
    if reviewed_after:
        query += " AND reviewed_at >= %s" if "r.*" not in query else " AND r.reviewed_at >= %s"
        params.append(reviewed_after)
    if reviewed_before:
        query += " AND reviewed_at <= %s" if "r.*" not in query else " AND r.reviewed_at <= %s"
        params.append(reviewed_before)

    order_col = "r.reviewed_at" if "r.*" in query else "reviewed_at"
    query += f" ORDER BY {order_col} DESC LIMIT %s OFFSET %s"
    params.extend([limit, offset])

    with get_db() as conn:
        with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
            cur.execute(query, params)
            rows = cur.fetchall()

    return [_serialize_row(r) for r in rows]


@app.get("/completions/enriched")
def get_completions_enriched(
    project_id: Optional[str] = Query(None),
    annotator_id: Optional[str] = Query(None),
    completed_after: Optional[str] = Query(None),
    completed_before: Optional[str] = Query(None),
    limit: int = Query(500, ge=1, le=5000),
    offset: int = Query(0, ge=0),
    _auth: None = Depends(verify_api_key),
):
    query = """
        SELECT
            c.completion_id,
            c.annotation_id,
            c.annotator_id,
            c.completed_at,
            c.duration_minutes,
            c.status AS completion_status,
            c.rework_count,
            a.project_id,
            a.annotation_type,
            a.status AS annotation_status,
            COALESCE(rev_agg.review_count, 0) AS review_count,
            COALESCE(rev_agg.avg_score, 0) AS avg_score,
            COALESCE(rev_agg.median_score, 0) AS median_score,
            COALESCE(rev_agg.min_score, 0) AS min_score,
            COALESCE(rev_agg.max_score, 0) AS max_score
        FROM completions c
        JOIN annotations a ON c.annotation_id = a.annotation_id
        LEFT JOIN LATERAL (
            SELECT
                COUNT(*)::int AS review_count,
                AVG(r.quality_score) AS avg_score,
                PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY r.quality_score) AS median_score,
                MIN(r.quality_score) AS min_score,
                MAX(r.quality_score) AS max_score
            FROM reviews r
            WHERE r.completion_id = c.completion_id
        ) rev_agg ON TRUE
        WHERE 1=1
    """
    params = []

    if project_id:
        query += " AND a.project_id = %s"
        params.append(project_id)
    if annotator_id:
        query += " AND c.annotator_id = %s"
        params.append(annotator_id)
    if completed_after:
        query += " AND c.completed_at >= %s"
        params.append(completed_after)
    if completed_before:
        query += " AND c.completed_at <= %s"
        params.append(completed_before)

    query += " ORDER BY c.completed_at DESC LIMIT %s OFFSET %s"
    params.extend([limit, offset])

    with get_db() as conn:
        with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
            cur.execute(query, params)
            rows = cur.fetchall()

    return [_serialize_row(r) for r in rows]


@app.get("/reviews/enriched")
def get_reviews_enriched(
    project_id: Optional[str] = Query(None),
    reviewer_id: Optional[str] = Query(None),
    reviewed_after: Optional[str] = Query(None),
    reviewed_before: Optional[str] = Query(None),
    limit: int = Query(500, ge=1, le=5000),
    offset: int = Query(0, ge=0),
    _auth: None = Depends(verify_api_key),
):
    query = """
        SELECT
            r.review_id,
            r.completion_id,
            r.reviewer_id,
            r.quality_score,
            r.quality_tier,
            r.notes,
            r.reviewed_at,
            c.annotator_id,
            c.completed_at,
            c.duration_minutes,
            c.status AS completion_status,
            a.annotation_id,
            a.project_id,
            a.annotation_type,
            a.status AS annotation_status
        FROM reviews r
        JOIN completions c ON r.completion_id = c.completion_id
        JOIN annotations a ON c.annotation_id = a.annotation_id
        WHERE 1=1
    """
    params = []

    if project_id:
        query += " AND a.project_id = %s"
        params.append(project_id)
    if reviewer_id:
        query += " AND r.reviewer_id = %s"
        params.append(reviewer_id)
    if reviewed_after:
        query += " AND r.reviewed_at >= %s"
        params.append(reviewed_after)
    if reviewed_before:
        query += " AND r.reviewed_at <= %s"
        params.append(reviewed_before)

    query += " ORDER BY r.reviewed_at DESC LIMIT %s OFFSET %s"
    params.extend([limit, offset])

    with get_db() as conn:
        with conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor) as cur:
            cur.execute(query, params)
            rows = cur.fetchall()

    return [_serialize_row(r) for r in rows]


def _serialize_row(row):
    """Convert datetime objects to ISO strings for JSON serialization."""
    result = {}
    for key, value in row.items():
        if hasattr(value, "isoformat"):
            result[key] = value.isoformat()
        else:
            result[key] = value
    return result
