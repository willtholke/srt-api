-- 001_create_tables.sql
-- SRT Tool annotation platform schema

DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS completions CASCADE;
DROP TABLE IF EXISTS annotations CASCADE;

CREATE TABLE annotations (
    annotation_id   VARCHAR NOT NULL PRIMARY KEY,
    project_id      VARCHAR NOT NULL,
    annotator_id    VARCHAR NOT NULL,
    annotation_type VARCHAR NOT NULL CHECK (annotation_type IN ('preference_ranking', 'safety_labeling', 'prompt_response')),
    status          VARCHAR NOT NULL CHECK (status IN ('assigned', 'in_progress', 'completed', 'under_review', 'rejected')),
    created_at      TIMESTAMP NOT NULL DEFAULT NOW(),
    deadline        TIMESTAMP
);

CREATE TABLE completions (
    completion_id    VARCHAR NOT NULL PRIMARY KEY,
    annotation_id    VARCHAR NOT NULL REFERENCES annotations(annotation_id),
    annotator_id     VARCHAR NOT NULL,
    completed_at     TIMESTAMP NOT NULL,
    duration_minutes REAL NOT NULL,
    status           VARCHAR NOT NULL CHECK (status IN ('submitted', 'accepted', 'rejected', 'needs_rework')),
    rework_count     INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE reviews (
    review_id    VARCHAR NOT NULL PRIMARY KEY,
    completion_id VARCHAR NOT NULL REFERENCES completions(completion_id),
    reviewer_id  VARCHAR NOT NULL,
    quality_score INTEGER NOT NULL CHECK (quality_score BETWEEN 1 AND 5),
    quality_tier  VARCHAR NOT NULL CHECK (quality_tier IN ('exceptional', 'meets_expectations', 'below_expectations', 'unacceptable')),
    notes         TEXT,
    reviewed_at   TIMESTAMP NOT NULL
);

CREATE INDEX idx_annotations_project ON annotations(project_id);
CREATE INDEX idx_annotations_annotator ON annotations(annotator_id);
CREATE INDEX idx_annotations_status ON annotations(status);
CREATE INDEX idx_completions_annotation ON completions(annotation_id);
CREATE INDEX idx_completions_annotator ON completions(annotator_id);
CREATE INDEX idx_reviews_completion ON reviews(completion_id);
CREATE INDEX idx_reviews_reviewer ON reviews(reviewer_id);
