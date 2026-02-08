-- 002_seed_data.sql
-- Seed data for SRT Tool annotation platform
-- ~160 annotations, ~200 completions, ~130 reviews
-- Date range: Jan 2025 – Feb 2026

-- ============================================================
-- ANNOTATIONS — Project 1: Llama-RLHF-v4 (preference_ranking)
-- Taskers: Alex Thompson, Wei Zhang, Rajesh Sharma, Anika Muller, Maria Garcia (removed 2025-02-10)
-- ============================================================

INSERT INTO annotations (annotation_id, project_id, annotator_id, annotation_type, status, created_at, deadline) VALUES
-- Alex Thompson (srt_meta_8x3k9m2p) — RLHF
('ann_srt_a001', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-01-06 09:15:00', '2025-01-20 23:59:59'),
('ann_srt_a002', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-01-08 14:30:00', '2025-01-22 23:59:59'),
('ann_srt_a003', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-01-15 10:00:00', '2025-01-29 23:59:59'),
('ann_srt_a004', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-02-03 08:45:00', '2025-02-17 23:59:59'),
('ann_srt_a005', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-03-10 11:20:00', '2025-03-24 23:59:59'),
('ann_srt_a006', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-04-14 09:00:00', '2025-04-28 23:59:59'),
('ann_srt_a007', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-05-20 13:30:00', '2025-06-03 23:59:59'),
('ann_srt_a008', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-07-01 08:00:00', '2025-07-15 23:59:59'),
('ann_srt_a009', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-08-18 10:45:00', '2025-09-01 23:59:59'),
('ann_srt_a010', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-10-05 14:00:00', '2025-10-19 23:59:59'),
('ann_srt_a011', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-11-12 09:30:00', '2025-11-26 23:59:59'),
('ann_srt_a012', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'in_progress', '2025-12-20 11:00:00', '2026-01-03 23:59:59'),
('ann_srt_a013', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'assigned', '2026-01-15 08:00:00', '2026-01-29 23:59:59'),
('ann_srt_a014', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'assigned', '2026-02-01 09:00:00', '2026-02-15 23:59:59'),

-- Wei Zhang (srt_meta_4n7q2r5t) — RLHF
('ann_srt_a015', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-01-07 10:00:00', '2025-01-21 23:59:59'),
('ann_srt_a016', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-01-12 15:30:00', '2025-01-26 23:59:59'),
('ann_srt_a017', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-01-20 09:45:00', '2025-02-03 23:59:59'),
('ann_srt_a018', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-02-05 11:15:00', '2025-02-19 23:59:59'),
('ann_srt_a019', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-02-25 08:30:00', '2025-03-11 23:59:59'),
('ann_srt_a020', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-03-15 14:00:00', '2025-03-29 23:59:59'),
('ann_srt_a021', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-04-08 10:30:00', '2025-04-22 23:59:59'),
('ann_srt_a022', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-05-02 09:00:00', '2025-05-16 23:59:59'),
('ann_srt_a023', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-06-10 13:15:00', '2025-06-24 23:59:59'),
('ann_srt_a024', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-07-22 08:45:00', '2025-08-05 23:59:59'),
('ann_srt_a025', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-09-03 11:00:00', '2025-09-17 23:59:59'),
('ann_srt_a026', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-10-15 09:30:00', '2025-10-29 23:59:59'),
('ann_srt_a027', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'under_review', '2025-11-28 14:00:00', '2025-12-12 23:59:59'),
('ann_srt_a028', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'in_progress', '2026-01-08 10:00:00', '2026-01-22 23:59:59'),
('ann_srt_a029', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'assigned', '2026-01-25 08:30:00', '2026-02-08 23:59:59'),

-- Rajesh Sharma (srt_meta_6j1w5v8m) — RLHF
('ann_srt_a030', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-01-09 08:00:00', '2025-01-23 23:59:59'),
('ann_srt_a031', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-01-18 11:30:00', '2025-02-01 23:59:59'),
('ann_srt_a032', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-02-10 09:15:00', '2025-02-24 23:59:59'),
('ann_srt_a033', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-03-01 14:45:00', '2025-03-15 23:59:59'),
('ann_srt_a034', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-03-20 10:00:00', '2025-04-03 23:59:59'),
('ann_srt_a035', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-04-15 08:30:00', '2025-04-29 23:59:59'),
('ann_srt_a036', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-05-12 13:00:00', '2025-05-26 23:59:59'),
('ann_srt_a037', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-06-20 09:45:00', '2025-07-04 23:59:59'),
('ann_srt_a038', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-08-01 11:30:00', '2025-08-15 23:59:59'),
('ann_srt_a039', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-09-10 08:00:00', '2025-09-24 23:59:59'),
('ann_srt_a040', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-10-22 14:15:00', '2025-11-05 23:59:59'),
('ann_srt_a041', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-12-05 10:00:00', '2025-12-19 23:59:59'),
('ann_srt_a042', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'in_progress', '2026-01-12 09:00:00', '2026-01-26 23:59:59'),
('ann_srt_a043', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'assigned', '2026-02-03 08:30:00', '2026-02-17 23:59:59'),

-- Anika Muller (srt_meta_1x4j8t5k) — RLHF (cross-assigned)
('ann_srt_a044', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-01-10 10:30:00', '2025-01-24 23:59:59'),
('ann_srt_a045', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-01-22 09:00:00', '2025-02-05 23:59:59'),
('ann_srt_a046', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-02-12 14:30:00', '2025-02-26 23:59:59'),
('ann_srt_a047', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-03-08 08:15:00', '2025-03-22 23:59:59'),
('ann_srt_a048', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-04-02 11:00:00', '2025-04-16 23:59:59'),
('ann_srt_a049', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-05-15 09:45:00', '2025-05-29 23:59:59'),
('ann_srt_a050', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-06-25 13:30:00', '2025-07-09 23:59:59'),
('ann_srt_a051', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-08-10 08:00:00', '2025-08-24 23:59:59'),
('ann_srt_a052', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-09-20 10:30:00', '2025-10-04 23:59:59'),
('ann_srt_a053', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-11-01 14:00:00', '2025-11-15 23:59:59'),
('ann_srt_a054', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'under_review', '2025-12-10 09:15:00', '2025-12-24 23:59:59'),
('ann_srt_a055', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'in_progress', '2026-01-20 11:00:00', '2026-02-03 23:59:59'),

-- Maria Garcia (srt_meta_9p3x7k2n) — RLHF (removed 2025-02-10)
('ann_srt_a056', 'proj_srt_rlhf_v4', 'srt_meta_9p3x7k2n', 'preference_ranking', 'completed', '2025-01-06 11:00:00', '2025-01-20 23:59:59'),
('ann_srt_a057', 'proj_srt_rlhf_v4', 'srt_meta_9p3x7k2n', 'preference_ranking', 'completed', '2025-01-13 08:45:00', '2025-01-27 23:59:59'),
('ann_srt_a058', 'proj_srt_rlhf_v4', 'srt_meta_9p3x7k2n', 'preference_ranking', 'completed', '2025-01-25 14:00:00', '2025-02-08 23:59:59'),
('ann_srt_a059', 'proj_srt_rlhf_v4', 'srt_meta_9p3x7k2n', 'preference_ranking', 'rejected', '2025-02-03 09:30:00', '2025-02-17 23:59:59'),
('ann_srt_a060', 'proj_srt_rlhf_v4', 'srt_meta_9p3x7k2n', 'preference_ranking', 'rejected', '2025-02-08 10:00:00', '2025-02-22 23:59:59'),

-- Additional RLHF annotations to reach ~90 for project 1
-- Alex Thompson extra
('ann_srt_a061', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-01-28 09:00:00', '2025-02-11 23:59:59'),
('ann_srt_a062', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-02-18 14:30:00', '2025-03-04 23:59:59'),
('ann_srt_a063', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-06-05 08:15:00', '2025-06-19 23:59:59'),
('ann_srt_a064', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-09-15 11:45:00', '2025-09-29 23:59:59'),

-- Wei Zhang extra
('ann_srt_a065', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-02-15 08:00:00', '2025-03-01 23:59:59'),
('ann_srt_a066', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-04-25 10:30:00', '2025-05-09 23:59:59'),
('ann_srt_a067', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-06-30 14:00:00', '2025-07-14 23:59:59'),
('ann_srt_a068', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-08-12 09:15:00', '2025-08-26 23:59:59'),

-- Rajesh Sharma extra
('ann_srt_a069', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-02-20 13:00:00', '2025-03-06 23:59:59'),
('ann_srt_a070', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-04-28 08:45:00', '2025-05-12 23:59:59'),
('ann_srt_a071', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-07-10 11:30:00', '2025-07-24 23:59:59'),
('ann_srt_a072', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-11-08 09:00:00', '2025-11-22 23:59:59'),

-- Anika Muller extra
('ann_srt_a073', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-02-28 10:15:00', '2025-03-14 23:59:59'),
('ann_srt_a074', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-04-18 14:30:00', '2025-05-02 23:59:59'),
('ann_srt_a075', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-07-05 08:00:00', '2025-07-19 23:59:59'),
('ann_srt_a076', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-10-12 11:45:00', '2025-10-26 23:59:59'),

-- Maria Garcia extra (all before removal date)
('ann_srt_a077', 'proj_srt_rlhf_v4', 'srt_meta_9p3x7k2n', 'preference_ranking', 'completed', '2025-01-10 13:00:00', '2025-01-24 23:59:59'),
('ann_srt_a078', 'proj_srt_rlhf_v4', 'srt_meta_9p3x7k2n', 'preference_ranking', 'completed', '2025-01-18 09:30:00', '2025-02-01 23:59:59'),
('ann_srt_a079', 'proj_srt_rlhf_v4', 'srt_meta_9p3x7k2n', 'preference_ranking', 'completed', '2025-01-30 11:15:00', '2025-02-13 23:59:59'),

-- ============================================================
-- ANNOTATIONS — Project 2: Llama-Safety-Review (safety_labeling)
-- Taskers: Tomasz Kowalski, Alex Thompson (reviewer), Carlos Rodriguez, Jonathan Blake
-- ============================================================

-- Tomasz Kowalski (srt_meta_2m6t4w9j) — Safety
('ann_srt_a080', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-01-07 08:30:00', '2025-01-21 23:59:59'),
('ann_srt_a081', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-01-14 10:00:00', '2025-01-28 23:59:59'),
('ann_srt_a082', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-01-22 14:15:00', '2025-02-05 23:59:59'),
('ann_srt_a083', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-02-06 09:00:00', '2025-02-20 23:59:59'),
('ann_srt_a084', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-02-20 11:30:00', '2025-03-06 23:59:59'),
('ann_srt_a085', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-03-10 08:45:00', '2025-03-24 23:59:59'),
('ann_srt_a086', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-04-01 13:00:00', '2025-04-15 23:59:59'),
('ann_srt_a087', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-04-22 10:15:00', '2025-05-06 23:59:59'),
('ann_srt_a088', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-05-15 08:00:00', '2025-05-29 23:59:59'),
('ann_srt_a089', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-06-08 14:30:00', '2025-06-22 23:59:59'),
('ann_srt_a090', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-07-02 09:30:00', '2025-07-16 23:59:59'),
('ann_srt_a091', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-08-14 11:00:00', '2025-08-28 23:59:59'),
('ann_srt_a092', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-09-25 08:15:00', '2025-10-09 23:59:59'),
('ann_srt_a093', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-11-05 14:00:00', '2025-11-19 23:59:59'),
('ann_srt_a094', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'under_review', '2025-12-15 10:30:00', '2025-12-29 23:59:59'),
('ann_srt_a095', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'in_progress', '2026-01-18 09:00:00', '2026-02-01 23:59:59'),
('ann_srt_a096', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'assigned', '2026-02-05 08:30:00', '2026-02-19 23:59:59'),

-- Alex Thompson (srt_meta_8x3k9m2p) — Safety (tasker + reviewer role)
('ann_srt_a097', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-01-08 09:00:00', '2025-01-22 23:59:59'),
('ann_srt_a098', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-01-20 11:30:00', '2025-02-03 23:59:59'),
('ann_srt_a099', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-02-08 14:00:00', '2025-02-22 23:59:59'),
('ann_srt_a100', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-03-05 08:30:00', '2025-03-19 23:59:59'),
('ann_srt_a101', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-04-10 10:15:00', '2025-04-24 23:59:59'),
('ann_srt_a102', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-05-22 13:00:00', '2025-06-05 23:59:59'),
('ann_srt_a103', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-07-08 09:45:00', '2025-07-22 23:59:59'),
('ann_srt_a104', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-08-20 11:00:00', '2025-09-03 23:59:59'),
('ann_srt_a105', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-10-01 08:00:00', '2025-10-15 23:59:59'),
('ann_srt_a106', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-11-15 14:30:00', '2025-11-29 23:59:59'),
('ann_srt_a107', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'in_progress', '2025-12-28 10:00:00', '2026-01-11 23:59:59'),
('ann_srt_a108', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'assigned', '2026-01-22 09:15:00', '2026-02-05 23:59:59'),

-- Carlos Rodriguez (srt_meta_3v9m2p6w) — Safety
('ann_srt_a109', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-01-09 10:00:00', '2025-01-23 23:59:59'),
('ann_srt_a110', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-01-18 08:30:00', '2025-02-01 23:59:59'),
('ann_srt_a111', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-02-05 14:00:00', '2025-02-19 23:59:59'),
('ann_srt_a112', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-02-25 09:30:00', '2025-03-11 23:59:59'),
('ann_srt_a113', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-03-18 11:15:00', '2025-04-01 23:59:59'),
('ann_srt_a114', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-04-12 08:00:00', '2025-04-26 23:59:59'),
('ann_srt_a115', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-05-08 13:30:00', '2025-05-22 23:59:59'),
('ann_srt_a116', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-06-15 10:00:00', '2025-06-29 23:59:59'),
('ann_srt_a117', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-07-28 08:45:00', '2025-08-11 23:59:59'),
('ann_srt_a118', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-09-05 14:15:00', '2025-09-19 23:59:59'),
('ann_srt_a119', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-10-18 09:00:00', '2025-11-01 23:59:59'),
('ann_srt_a120', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-11-28 11:30:00', '2025-12-12 23:59:59'),
('ann_srt_a121', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'under_review', '2026-01-05 08:00:00', '2026-01-19 23:59:59'),
('ann_srt_a122', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'in_progress', '2026-01-28 10:30:00', '2026-02-11 23:59:59'),

-- Jonathan Blake (srt_meta_7k5n1q8r) — Safety (cross-assigned)
('ann_srt_a123', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-01-11 09:30:00', '2025-01-25 23:59:59'),
('ann_srt_a124', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-01-25 14:00:00', '2025-02-08 23:59:59'),
('ann_srt_a125', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-02-12 08:45:00', '2025-02-26 23:59:59'),
('ann_srt_a126', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-03-08 11:00:00', '2025-03-22 23:59:59'),
('ann_srt_a127', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-04-05 09:15:00', '2025-04-19 23:59:59'),
('ann_srt_a128', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-05-18 13:45:00', '2025-06-01 23:59:59'),
('ann_srt_a129', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-06-30 08:00:00', '2025-07-14 23:59:59'),
('ann_srt_a130', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-08-08 10:30:00', '2025-08-22 23:59:59'),
('ann_srt_a131', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-09-20 14:00:00', '2025-10-04 23:59:59'),
('ann_srt_a132', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-11-02 09:00:00', '2025-11-16 23:59:59'),
('ann_srt_a133', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'under_review', '2025-12-08 11:45:00', '2025-12-22 23:59:59'),
('ann_srt_a134', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'in_progress', '2026-01-10 08:30:00', '2026-01-24 23:59:59'),

-- Additional safety annotations
-- Tomasz extra
('ann_srt_a135', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-02-14 13:00:00', '2025-02-28 23:59:59'),
('ann_srt_a136', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-03-28 08:30:00', '2025-04-11 23:59:59'),
('ann_srt_a137', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-05-30 10:00:00', '2025-06-13 23:59:59'),
('ann_srt_a138', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-07-20 14:30:00', '2025-08-03 23:59:59'),
('ann_srt_a139', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'safety_labeling', 'completed', '2025-10-10 09:15:00', '2025-10-24 23:59:59'),

-- Alex Thompson safety extra
('ann_srt_a140', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-02-15 10:00:00', '2025-03-01 23:59:59'),
('ann_srt_a141', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-04-28 08:30:00', '2025-05-12 23:59:59'),
('ann_srt_a142', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-06-18 14:00:00', '2025-07-02 23:59:59'),
('ann_srt_a143', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'safety_labeling', 'completed', '2025-09-12 09:45:00', '2025-09-26 23:59:59'),

-- Carlos extra
('ann_srt_a144', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-03-25 11:00:00', '2025-04-08 23:59:59'),
('ann_srt_a145', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-05-30 08:15:00', '2025-06-13 23:59:59'),
('ann_srt_a146', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-08-15 13:30:00', '2025-08-29 23:59:59'),
('ann_srt_a147', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'safety_labeling', 'completed', '2025-10-28 10:00:00', '2025-11-11 23:59:59'),

-- Jonathan extra
('ann_srt_a148', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-02-18 09:00:00', '2025-03-04 23:59:59'),
('ann_srt_a149', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-04-20 14:30:00', '2025-05-04 23:59:59'),
('ann_srt_a150', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-07-15 08:00:00', '2025-07-29 23:59:59'),
('ann_srt_a151', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'safety_labeling', 'completed', '2025-10-05 11:15:00', '2025-10-19 23:59:59'),

-- Some prompt_response type annotations for variety (Safety project includes some)
('ann_srt_a152', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'prompt_response', 'completed', '2025-03-15 10:30:00', '2025-03-29 23:59:59'),
('ann_srt_a153', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'prompt_response', 'completed', '2025-05-05 08:00:00', '2025-05-19 23:59:59'),
('ann_srt_a154', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'prompt_response', 'completed', '2025-07-10 14:15:00', '2025-07-24 23:59:59'),
('ann_srt_a155', 'proj_srt_safety', 'srt_meta_7k5n1q8r', 'prompt_response', 'completed', '2025-09-08 09:00:00', '2025-09-22 23:59:59'),
('ann_srt_a156', 'proj_srt_safety', 'srt_meta_2m6t4w9j', 'prompt_response', 'completed', '2025-11-20 11:30:00', '2025-12-04 23:59:59'),
('ann_srt_a157', 'proj_srt_safety', 'srt_meta_3v9m2p6w', 'prompt_response', 'completed', '2025-12-18 08:45:00', '2026-01-01 23:59:59'),
('ann_srt_a158', 'proj_srt_safety', 'srt_meta_8x3k9m2p', 'prompt_response', 'in_progress', '2026-01-30 10:00:00', '2026-02-13 23:59:59'),

-- A few more RLHF to fill out
('ann_srt_a159', 'proj_srt_rlhf_v4', 'srt_meta_4n7q2r5t', 'preference_ranking', 'completed', '2025-12-08 09:00:00', '2025-12-22 23:59:59'),
('ann_srt_a160', 'proj_srt_rlhf_v4', 'srt_meta_6j1w5v8m', 'preference_ranking', 'completed', '2025-05-25 14:00:00', '2025-06-08 23:59:59'),
('ann_srt_a161', 'proj_srt_rlhf_v4', 'srt_meta_1x4j8t5k', 'preference_ranking', 'completed', '2025-12-22 08:30:00', '2026-01-05 23:59:59'),
('ann_srt_a162', 'proj_srt_rlhf_v4', 'srt_meta_8x3k9m2p', 'preference_ranking', 'completed', '2025-12-01 11:00:00', '2025-12-15 23:59:59');


-- ============================================================
-- COMPLETIONS
-- ~1-2 per annotation, for completed/under_review annotations
-- Duration in minutes (15-120 range)
-- ============================================================

INSERT INTO completions (completion_id, annotation_id, annotator_id, completed_at, duration_minutes, status, rework_count) VALUES
-- Alex Thompson RLHF completions
('comp_srt_c001', 'ann_srt_a001', 'srt_meta_8x3k9m2p', '2025-01-08 14:30:00', 42.5, 'accepted', 0),
('comp_srt_c002', 'ann_srt_a002', 'srt_meta_8x3k9m2p', '2025-01-10 16:00:00', 38.0, 'accepted', 0),
('comp_srt_c003', 'ann_srt_a003', 'srt_meta_8x3k9m2p', '2025-01-18 11:45:00', 55.0, 'accepted', 1),
('comp_srt_c004', 'ann_srt_a004', 'srt_meta_8x3k9m2p', '2025-02-06 10:30:00', 35.5, 'accepted', 0),
('comp_srt_c005', 'ann_srt_a005', 'srt_meta_8x3k9m2p', '2025-03-13 15:00:00', 48.0, 'accepted', 0),
('comp_srt_c006', 'ann_srt_a006', 'srt_meta_8x3k9m2p', '2025-04-17 11:20:00', 40.0, 'accepted', 0),
('comp_srt_c007', 'ann_srt_a007', 'srt_meta_8x3k9m2p', '2025-05-23 16:45:00', 52.5, 'accepted', 0),
('comp_srt_c008', 'ann_srt_a008', 'srt_meta_8x3k9m2p', '2025-07-04 09:30:00', 33.0, 'accepted', 0),
('comp_srt_c009', 'ann_srt_a009', 'srt_meta_8x3k9m2p', '2025-08-21 13:15:00', 45.0, 'accepted', 0),
('comp_srt_c010', 'ann_srt_a010', 'srt_meta_8x3k9m2p', '2025-10-08 15:30:00', 37.5, 'accepted', 0),
('comp_srt_c011', 'ann_srt_a011', 'srt_meta_8x3k9m2p', '2025-11-15 10:00:00', 50.0, 'accepted', 1),
('comp_srt_c012', 'ann_srt_a061', 'srt_meta_8x3k9m2p', '2025-01-31 14:00:00', 41.0, 'accepted', 0),
('comp_srt_c013', 'ann_srt_a062', 'srt_meta_8x3k9m2p', '2025-02-21 16:30:00', 36.5, 'accepted', 0),
('comp_srt_c014', 'ann_srt_a063', 'srt_meta_8x3k9m2p', '2025-06-08 10:15:00', 44.0, 'accepted', 0),
('comp_srt_c015', 'ann_srt_a064', 'srt_meta_8x3k9m2p', '2025-09-18 14:45:00', 39.0, 'accepted', 0),
('comp_srt_c016', 'ann_srt_a162', 'srt_meta_8x3k9m2p', '2025-12-04 13:00:00', 47.5, 'accepted', 0),

-- Wei Zhang RLHF completions
('comp_srt_c017', 'ann_srt_a015', 'srt_meta_4n7q2r5t', '2025-01-10 12:00:00', 58.0, 'accepted', 0),
('comp_srt_c018', 'ann_srt_a016', 'srt_meta_4n7q2r5t', '2025-01-15 15:30:00', 43.5, 'accepted', 0),
('comp_srt_c019', 'ann_srt_a017', 'srt_meta_4n7q2r5t', '2025-01-23 10:45:00', 50.0, 'accepted', 1),
('comp_srt_c020', 'ann_srt_a018', 'srt_meta_4n7q2r5t', '2025-02-08 14:00:00', 35.0, 'accepted', 0),
('comp_srt_c021', 'ann_srt_a019', 'srt_meta_4n7q2r5t', '2025-02-28 09:30:00', 62.0, 'accepted', 0),
('comp_srt_c022', 'ann_srt_a020', 'srt_meta_4n7q2r5t', '2025-03-18 16:15:00', 41.0, 'accepted', 0),
('comp_srt_c023', 'ann_srt_a021', 'srt_meta_4n7q2r5t', '2025-04-11 11:00:00', 46.5, 'accepted', 0),
('comp_srt_c024', 'ann_srt_a022', 'srt_meta_4n7q2r5t', '2025-05-05 13:45:00', 38.0, 'accepted', 0),
('comp_srt_c025', 'ann_srt_a023', 'srt_meta_4n7q2r5t', '2025-06-13 10:30:00', 55.5, 'accepted', 0),
('comp_srt_c026', 'ann_srt_a024', 'srt_meta_4n7q2r5t', '2025-07-25 15:00:00', 33.5, 'accepted', 0),
('comp_srt_c027', 'ann_srt_a025', 'srt_meta_4n7q2r5t', '2025-09-06 08:45:00', 48.0, 'accepted', 0),
('comp_srt_c028', 'ann_srt_a026', 'srt_meta_4n7q2r5t', '2025-10-18 14:30:00', 40.5, 'accepted', 0),
('comp_srt_c029', 'ann_srt_a027', 'srt_meta_4n7q2r5t', '2025-12-01 11:00:00', 52.0, 'submitted', 0),
('comp_srt_c030', 'ann_srt_a065', 'srt_meta_4n7q2r5t', '2025-02-18 10:00:00', 37.0, 'accepted', 0),
('comp_srt_c031', 'ann_srt_a066', 'srt_meta_4n7q2r5t', '2025-04-28 13:15:00', 44.5, 'accepted', 0),
('comp_srt_c032', 'ann_srt_a067', 'srt_meta_4n7q2r5t', '2025-07-03 16:00:00', 39.0, 'accepted', 0),
('comp_srt_c033', 'ann_srt_a068', 'srt_meta_4n7q2r5t', '2025-08-15 09:30:00', 51.0, 'accepted', 0),
('comp_srt_c034', 'ann_srt_a159', 'srt_meta_4n7q2r5t', '2025-12-11 14:00:00', 43.0, 'accepted', 0),

-- Rajesh Sharma RLHF completions
('comp_srt_c035', 'ann_srt_a030', 'srt_meta_6j1w5v8m', '2025-01-12 10:30:00', 65.0, 'accepted', 0),
('comp_srt_c036', 'ann_srt_a031', 'srt_meta_6j1w5v8m', '2025-01-21 14:00:00', 48.5, 'accepted', 0),
('comp_srt_c037', 'ann_srt_a032', 'srt_meta_6j1w5v8m', '2025-02-13 09:15:00', 42.0, 'accepted', 1),
('comp_srt_c038', 'ann_srt_a033', 'srt_meta_6j1w5v8m', '2025-03-04 15:30:00', 55.5, 'accepted', 0),
('comp_srt_c039', 'ann_srt_a034', 'srt_meta_6j1w5v8m', '2025-03-23 11:00:00', 38.0, 'accepted', 0),
('comp_srt_c040', 'ann_srt_a035', 'srt_meta_6j1w5v8m', '2025-04-18 13:45:00', 50.0, 'accepted', 0),
('comp_srt_c041', 'ann_srt_a036', 'srt_meta_6j1w5v8m', '2025-05-15 08:30:00', 35.5, 'accepted', 0),
('comp_srt_c042', 'ann_srt_a037', 'srt_meta_6j1w5v8m', '2025-06-23 16:00:00', 47.0, 'accepted', 0),
('comp_srt_c043', 'ann_srt_a038', 'srt_meta_6j1w5v8m', '2025-08-04 10:45:00', 41.5, 'accepted', 0),
('comp_srt_c044', 'ann_srt_a039', 'srt_meta_6j1w5v8m', '2025-09-13 14:15:00', 53.0, 'accepted', 0),
('comp_srt_c045', 'ann_srt_a040', 'srt_meta_6j1w5v8m', '2025-10-25 09:00:00', 36.0, 'accepted', 0),
('comp_srt_c046', 'ann_srt_a041', 'srt_meta_6j1w5v8m', '2025-12-08 13:30:00', 44.0, 'accepted', 0),
('comp_srt_c047', 'ann_srt_a069', 'srt_meta_6j1w5v8m', '2025-02-23 10:00:00', 57.5, 'accepted', 0),
('comp_srt_c048', 'ann_srt_a070', 'srt_meta_6j1w5v8m', '2025-05-01 14:30:00', 40.0, 'accepted', 0),
('comp_srt_c049', 'ann_srt_a071', 'srt_meta_6j1w5v8m', '2025-07-13 11:15:00', 46.5, 'accepted', 0),
('comp_srt_c050', 'ann_srt_a072', 'srt_meta_6j1w5v8m', '2025-11-11 15:00:00', 38.5, 'accepted', 0),
('comp_srt_c051', 'ann_srt_a160', 'srt_meta_6j1w5v8m', '2025-05-28 09:30:00', 49.0, 'accepted', 0),

-- Anika Muller RLHF completions
('comp_srt_c052', 'ann_srt_a044', 'srt_meta_1x4j8t5k', '2025-01-13 12:00:00', 45.0, 'accepted', 0),
('comp_srt_c053', 'ann_srt_a045', 'srt_meta_1x4j8t5k', '2025-01-25 10:30:00', 52.5, 'accepted', 0),
('comp_srt_c054', 'ann_srt_a046', 'srt_meta_1x4j8t5k', '2025-02-15 15:00:00', 37.0, 'accepted', 0),
('comp_srt_c055', 'ann_srt_a047', 'srt_meta_1x4j8t5k', '2025-03-11 09:45:00', 48.5, 'accepted', 0),
('comp_srt_c056', 'ann_srt_a048', 'srt_meta_1x4j8t5k', '2025-04-05 13:30:00', 41.0, 'accepted', 0),
('comp_srt_c057', 'ann_srt_a049', 'srt_meta_1x4j8t5k', '2025-05-18 08:15:00', 55.0, 'accepted', 1),
('comp_srt_c058', 'ann_srt_a050', 'srt_meta_1x4j8t5k', '2025-06-28 14:00:00', 36.5, 'accepted', 0),
('comp_srt_c059', 'ann_srt_a051', 'srt_meta_1x4j8t5k', '2025-08-13 10:30:00', 43.0, 'accepted', 0),
('comp_srt_c060', 'ann_srt_a052', 'srt_meta_1x4j8t5k', '2025-09-23 15:45:00', 50.5, 'accepted', 0),
('comp_srt_c061', 'ann_srt_a053', 'srt_meta_1x4j8t5k', '2025-11-04 11:00:00', 39.0, 'accepted', 0),
('comp_srt_c062', 'ann_srt_a054', 'srt_meta_1x4j8t5k', '2025-12-13 09:30:00', 46.0, 'submitted', 0),
('comp_srt_c063', 'ann_srt_a073', 'srt_meta_1x4j8t5k', '2025-03-03 13:00:00', 42.5, 'accepted', 0),
('comp_srt_c064', 'ann_srt_a074', 'srt_meta_1x4j8t5k', '2025-04-21 10:15:00', 54.0, 'accepted', 0),
('comp_srt_c065', 'ann_srt_a075', 'srt_meta_1x4j8t5k', '2025-07-08 14:30:00', 35.0, 'accepted', 0),
('comp_srt_c066', 'ann_srt_a076', 'srt_meta_1x4j8t5k', '2025-10-15 08:45:00', 47.5, 'accepted', 0),
('comp_srt_c067', 'ann_srt_a161', 'srt_meta_1x4j8t5k', '2025-12-25 11:30:00', 40.0, 'accepted', 0),

-- Maria Garcia RLHF completions (before removal)
('comp_srt_c068', 'ann_srt_a056', 'srt_meta_9p3x7k2n', '2025-01-09 13:00:00', 38.5, 'accepted', 0),
('comp_srt_c069', 'ann_srt_a057', 'srt_meta_9p3x7k2n', '2025-01-16 10:30:00', 45.0, 'accepted', 0),
('comp_srt_c070', 'ann_srt_a058', 'srt_meta_9p3x7k2n', '2025-01-28 15:00:00', 52.0, 'accepted', 0),
('comp_srt_c071', 'ann_srt_a059', 'srt_meta_9p3x7k2n', '2025-02-06 11:30:00', 30.0, 'rejected', 1),
('comp_srt_c072', 'ann_srt_a077', 'srt_meta_9p3x7k2n', '2025-01-13 14:15:00', 41.0, 'accepted', 0),
('comp_srt_c073', 'ann_srt_a078', 'srt_meta_9p3x7k2n', '2025-01-21 09:00:00', 36.0, 'accepted', 0),
('comp_srt_c074', 'ann_srt_a079', 'srt_meta_9p3x7k2n', '2025-02-02 16:30:00', 48.5, 'accepted', 0),

-- Some annotations get 2 completions (rework)
('comp_srt_c075', 'ann_srt_a003', 'srt_meta_8x3k9m2p', '2025-01-16 09:00:00', 60.0, 'rejected', 0),
('comp_srt_c076', 'ann_srt_a017', 'srt_meta_4n7q2r5t', '2025-01-22 08:00:00', 45.0, 'rejected', 0),
('comp_srt_c077', 'ann_srt_a032', 'srt_meta_6j1w5v8m', '2025-02-12 08:00:00', 55.0, 'rejected', 0),
('comp_srt_c078', 'ann_srt_a049', 'srt_meta_1x4j8t5k', '2025-05-16 10:00:00', 48.0, 'rejected', 0),
('comp_srt_c079', 'ann_srt_a011', 'srt_meta_8x3k9m2p', '2025-11-13 08:30:00', 42.0, 'rejected', 0),

-- ============================================================
-- COMPLETIONS — Safety project
-- ============================================================

-- Tomasz Kowalski Safety completions
('comp_srt_c080', 'ann_srt_a080', 'srt_meta_2m6t4w9j', '2025-01-10 10:00:00', 72.0, 'accepted', 0),
('comp_srt_c081', 'ann_srt_a081', 'srt_meta_2m6t4w9j', '2025-01-17 14:30:00', 58.5, 'accepted', 0),
('comp_srt_c082', 'ann_srt_a082', 'srt_meta_2m6t4w9j', '2025-01-25 11:00:00', 65.0, 'accepted', 0),
('comp_srt_c083', 'ann_srt_a083', 'srt_meta_2m6t4w9j', '2025-02-09 09:30:00', 48.0, 'accepted', 1),
('comp_srt_c084', 'ann_srt_a084', 'srt_meta_2m6t4w9j', '2025-02-23 15:00:00', 55.5, 'accepted', 0),
('comp_srt_c085', 'ann_srt_a085', 'srt_meta_2m6t4w9j', '2025-03-13 10:45:00', 70.0, 'accepted', 0),
('comp_srt_c086', 'ann_srt_a086', 'srt_meta_2m6t4w9j', '2025-04-04 13:15:00', 62.5, 'accepted', 0),
('comp_srt_c087', 'ann_srt_a087', 'srt_meta_2m6t4w9j', '2025-04-25 09:00:00', 45.0, 'accepted', 0),
('comp_srt_c088', 'ann_srt_a088', 'srt_meta_2m6t4w9j', '2025-05-18 14:30:00', 68.0, 'accepted', 0),
('comp_srt_c089', 'ann_srt_a089', 'srt_meta_2m6t4w9j', '2025-06-11 11:00:00', 53.5, 'accepted', 0),
('comp_srt_c090', 'ann_srt_a090', 'srt_meta_2m6t4w9j', '2025-07-05 08:30:00', 60.0, 'accepted', 0),
('comp_srt_c091', 'ann_srt_a091', 'srt_meta_2m6t4w9j', '2025-08-17 15:45:00', 47.0, 'accepted', 0),
('comp_srt_c092', 'ann_srt_a092', 'srt_meta_2m6t4w9j', '2025-09-28 10:00:00', 71.5, 'accepted', 0),
('comp_srt_c093', 'ann_srt_a093', 'srt_meta_2m6t4w9j', '2025-11-08 13:30:00', 56.0, 'accepted', 0),
('comp_srt_c094', 'ann_srt_a094', 'srt_meta_2m6t4w9j', '2025-12-18 09:15:00', 63.5, 'submitted', 0),
('comp_srt_c095', 'ann_srt_a135', 'srt_meta_2m6t4w9j', '2025-02-17 14:00:00', 52.0, 'accepted', 0),
('comp_srt_c096', 'ann_srt_a136', 'srt_meta_2m6t4w9j', '2025-03-31 10:30:00', 66.5, 'accepted', 0),
('comp_srt_c097', 'ann_srt_a137', 'srt_meta_2m6t4w9j', '2025-06-02 08:00:00', 49.0, 'accepted', 0),
('comp_srt_c098', 'ann_srt_a138', 'srt_meta_2m6t4w9j', '2025-07-23 15:30:00', 58.0, 'accepted', 0),
('comp_srt_c099', 'ann_srt_a139', 'srt_meta_2m6t4w9j', '2025-10-13 11:45:00', 44.5, 'accepted', 0),
('comp_srt_c100', 'ann_srt_a152', 'srt_meta_2m6t4w9j', '2025-03-18 13:00:00', 75.0, 'accepted', 0),
('comp_srt_c101', 'ann_srt_a156', 'srt_meta_2m6t4w9j', '2025-11-23 09:30:00', 61.0, 'accepted', 0),

-- Alex Thompson Safety completions
('comp_srt_c102', 'ann_srt_a097', 'srt_meta_8x3k9m2p', '2025-01-11 11:00:00', 55.0, 'accepted', 0),
('comp_srt_c103', 'ann_srt_a098', 'srt_meta_8x3k9m2p', '2025-01-23 14:30:00', 63.0, 'accepted', 0),
('comp_srt_c104', 'ann_srt_a099', 'srt_meta_8x3k9m2p', '2025-02-11 09:00:00', 47.5, 'accepted', 0),
('comp_srt_c105', 'ann_srt_a100', 'srt_meta_8x3k9m2p', '2025-03-08 15:15:00', 58.0, 'accepted', 0),
('comp_srt_c106', 'ann_srt_a101', 'srt_meta_8x3k9m2p', '2025-04-13 10:30:00', 42.0, 'accepted', 0),
('comp_srt_c107', 'ann_srt_a102', 'srt_meta_8x3k9m2p', '2025-05-25 13:00:00', 54.5, 'accepted', 0),
('comp_srt_c108', 'ann_srt_a103', 'srt_meta_8x3k9m2p', '2025-07-11 08:45:00', 66.0, 'accepted', 0),
('comp_srt_c109', 'ann_srt_a104', 'srt_meta_8x3k9m2p', '2025-08-23 14:00:00', 50.0, 'accepted', 0),
('comp_srt_c110', 'ann_srt_a105', 'srt_meta_8x3k9m2p', '2025-10-04 10:15:00', 45.5, 'accepted', 0),
('comp_srt_c111', 'ann_srt_a106', 'srt_meta_8x3k9m2p', '2025-11-18 15:30:00', 59.0, 'accepted', 0),
('comp_srt_c112', 'ann_srt_a140', 'srt_meta_8x3k9m2p', '2025-02-18 11:00:00', 52.5, 'accepted', 0),
('comp_srt_c113', 'ann_srt_a141', 'srt_meta_8x3k9m2p', '2025-05-01 09:30:00', 40.0, 'accepted', 0),
('comp_srt_c114', 'ann_srt_a142', 'srt_meta_8x3k9m2p', '2025-06-21 14:15:00', 68.0, 'accepted', 0),
('comp_srt_c115', 'ann_srt_a143', 'srt_meta_8x3k9m2p', '2025-09-15 10:00:00', 46.0, 'accepted', 0),
('comp_srt_c116', 'ann_srt_a153', 'srt_meta_8x3k9m2p', '2025-05-08 13:30:00', 57.5, 'accepted', 0),

-- Carlos Rodriguez Safety completions
('comp_srt_c117', 'ann_srt_a109', 'srt_meta_3v9m2p6w', '2025-01-12 13:00:00', 80.0, 'accepted', 0),
('comp_srt_c118', 'ann_srt_a110', 'srt_meta_3v9m2p6w', '2025-01-21 09:45:00', 65.5, 'accepted', 0),
('comp_srt_c119', 'ann_srt_a111', 'srt_meta_3v9m2p6w', '2025-02-08 14:30:00', 72.0, 'accepted', 0),
('comp_srt_c120', 'ann_srt_a112', 'srt_meta_3v9m2p6w', '2025-02-28 10:00:00', 55.0, 'accepted', 0),
('comp_srt_c121', 'ann_srt_a113', 'srt_meta_3v9m2p6w', '2025-03-21 15:15:00', 68.5, 'accepted', 1),
('comp_srt_c122', 'ann_srt_a114', 'srt_meta_3v9m2p6w', '2025-04-15 11:00:00', 48.0, 'accepted', 0),
('comp_srt_c123', 'ann_srt_a115', 'srt_meta_3v9m2p6w', '2025-05-11 08:30:00', 76.0, 'accepted', 0),
('comp_srt_c124', 'ann_srt_a116', 'srt_meta_3v9m2p6w', '2025-06-18 14:00:00', 60.5, 'accepted', 0),
('comp_srt_c125', 'ann_srt_a117', 'srt_meta_3v9m2p6w', '2025-07-31 10:30:00', 53.0, 'accepted', 0),
('comp_srt_c126', 'ann_srt_a118', 'srt_meta_3v9m2p6w', '2025-09-08 15:45:00', 70.0, 'accepted', 0),
('comp_srt_c127', 'ann_srt_a119', 'srt_meta_3v9m2p6w', '2025-10-21 09:00:00', 45.5, 'accepted', 0),
('comp_srt_c128', 'ann_srt_a120', 'srt_meta_3v9m2p6w', '2025-12-01 13:30:00', 62.0, 'accepted', 0),
('comp_srt_c129', 'ann_srt_a121', 'srt_meta_3v9m2p6w', '2026-01-08 10:15:00', 58.5, 'submitted', 0),
('comp_srt_c130', 'ann_srt_a144', 'srt_meta_3v9m2p6w', '2025-03-28 14:00:00', 74.0, 'accepted', 0),
('comp_srt_c131', 'ann_srt_a145', 'srt_meta_3v9m2p6w', '2025-06-02 11:30:00', 51.0, 'accepted', 0),
('comp_srt_c132', 'ann_srt_a146', 'srt_meta_3v9m2p6w', '2025-08-18 08:45:00', 67.5, 'accepted', 0),
('comp_srt_c133', 'ann_srt_a147', 'srt_meta_3v9m2p6w', '2025-10-31 15:00:00', 54.0, 'accepted', 0),
('comp_srt_c134', 'ann_srt_a154', 'srt_meta_3v9m2p6w', '2025-07-13 10:00:00', 78.5, 'accepted', 0),
('comp_srt_c135', 'ann_srt_a157', 'srt_meta_3v9m2p6w', '2025-12-21 09:30:00', 63.0, 'accepted', 0),

-- Jonathan Blake Safety completions
('comp_srt_c136', 'ann_srt_a123', 'srt_meta_7k5n1q8r', '2025-01-14 11:30:00', 85.0, 'accepted', 0),
('comp_srt_c137', 'ann_srt_a124', 'srt_meta_7k5n1q8r', '2025-01-28 15:00:00', 70.0, 'accepted', 0),
('comp_srt_c138', 'ann_srt_a125', 'srt_meta_7k5n1q8r', '2025-02-15 09:30:00', 62.5, 'accepted', 1),
('comp_srt_c139', 'ann_srt_a126', 'srt_meta_7k5n1q8r', '2025-03-11 14:00:00', 55.0, 'accepted', 0),
('comp_srt_c140', 'ann_srt_a127', 'srt_meta_7k5n1q8r', '2025-04-08 10:15:00', 73.5, 'accepted', 0),
('comp_srt_c141', 'ann_srt_a128', 'srt_meta_7k5n1q8r', '2025-05-21 13:45:00', 48.0, 'accepted', 0),
('comp_srt_c142', 'ann_srt_a129', 'srt_meta_7k5n1q8r', '2025-07-03 08:00:00', 67.0, 'accepted', 0),
('comp_srt_c143', 'ann_srt_a130', 'srt_meta_7k5n1q8r', '2025-08-11 15:30:00', 58.5, 'accepted', 0),
('comp_srt_c144', 'ann_srt_a131', 'srt_meta_7k5n1q8r', '2025-09-23 11:00:00', 76.0, 'accepted', 0),
('comp_srt_c145', 'ann_srt_a132', 'srt_meta_7k5n1q8r', '2025-11-05 09:30:00', 52.5, 'accepted', 0),
('comp_srt_c146', 'ann_srt_a133', 'srt_meta_7k5n1q8r', '2025-12-11 14:15:00', 64.0, 'submitted', 0),
('comp_srt_c147', 'ann_srt_a148', 'srt_meta_7k5n1q8r', '2025-02-21 10:00:00', 71.0, 'accepted', 0),
('comp_srt_c148', 'ann_srt_a149', 'srt_meta_7k5n1q8r', '2025-04-23 13:30:00', 56.0, 'accepted', 0),
('comp_srt_c149', 'ann_srt_a150', 'srt_meta_7k5n1q8r', '2025-07-18 08:45:00', 69.5, 'accepted', 0),
('comp_srt_c150', 'ann_srt_a151', 'srt_meta_7k5n1q8r', '2025-10-08 15:00:00', 44.0, 'accepted', 0),
('comp_srt_c151', 'ann_srt_a155', 'srt_meta_7k5n1q8r', '2025-09-11 11:30:00', 82.0, 'accepted', 0),

-- Rework completions for safety
('comp_srt_c152', 'ann_srt_a083', 'srt_meta_2m6t4w9j', '2025-02-08 08:00:00', 50.0, 'rejected', 0),
('comp_srt_c153', 'ann_srt_a113', 'srt_meta_3v9m2p6w', '2025-03-20 09:00:00', 62.0, 'rejected', 0),
('comp_srt_c154', 'ann_srt_a125', 'srt_meta_7k5n1q8r', '2025-02-14 08:00:00', 58.0, 'rejected', 0),

-- A few needs_rework status
('comp_srt_c155', 'ann_srt_a059', 'srt_meta_9p3x7k2n', '2025-02-05 14:00:00', 25.0, 'needs_rework', 0);


-- ============================================================
-- REVIEWS
-- ~60-70% of completions get reviewed
-- Quality scores: skew toward 3-4 range
-- Reviewers: Alex Thompson (reviewer role on Safety), other annotators review each other
-- ============================================================

INSERT INTO reviews (review_id, completion_id, reviewer_id, quality_score, quality_tier, notes, reviewed_at) VALUES
-- RLHF reviews (reviewed by various annotators)
('rev_srt_r001', 'comp_srt_c001', 'srt_meta_4n7q2r5t', 4, 'meets_expectations', 'Solid preference ranking with good justification', '2025-01-10 09:00:00'),
('rev_srt_r002', 'comp_srt_c002', 'srt_meta_6j1w5v8m', 3, 'meets_expectations', NULL, '2025-01-12 14:00:00'),
('rev_srt_r003', 'comp_srt_c003', 'srt_meta_4n7q2r5t', 4, 'meets_expectations', 'Good work after rework', '2025-01-20 10:00:00'),
('rev_srt_r004', 'comp_srt_c004', 'srt_meta_1x4j8t5k', 3, 'meets_expectations', NULL, '2025-02-08 11:30:00'),
('rev_srt_r005', 'comp_srt_c005', 'srt_meta_6j1w5v8m', 5, 'exceptional', 'Excellent detailed analysis of preference pairs', '2025-03-15 09:00:00'),
('rev_srt_r006', 'comp_srt_c006', 'srt_meta_4n7q2r5t', 4, 'meets_expectations', NULL, '2025-04-19 14:30:00'),
('rev_srt_r007', 'comp_srt_c007', 'srt_meta_1x4j8t5k', 3, 'meets_expectations', 'Adequate but could use more detail', '2025-05-26 10:00:00'),
('rev_srt_r008', 'comp_srt_c008', 'srt_meta_6j1w5v8m', 4, 'meets_expectations', NULL, '2025-07-07 13:00:00'),
('rev_srt_r009', 'comp_srt_c009', 'srt_meta_4n7q2r5t', 4, 'meets_expectations', 'Consistent quality', '2025-08-23 15:00:00'),
('rev_srt_r010', 'comp_srt_c010', 'srt_meta_1x4j8t5k', 3, 'meets_expectations', NULL, '2025-10-10 11:00:00'),
('rev_srt_r011', 'comp_srt_c012', 'srt_meta_4n7q2r5t', 4, 'meets_expectations', NULL, '2025-02-03 09:30:00'),
('rev_srt_r012', 'comp_srt_c014', 'srt_meta_6j1w5v8m', 5, 'exceptional', 'Outstanding attention to nuance', '2025-06-10 14:00:00'),
('rev_srt_r013', 'comp_srt_c016', 'srt_meta_4n7q2r5t', 4, 'meets_expectations', NULL, '2025-12-06 10:00:00'),

-- Wei Zhang reviews
('rev_srt_r014', 'comp_srt_c017', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Thorough preference analysis', '2025-01-12 10:30:00'),
('rev_srt_r015', 'comp_srt_c018', 'srt_meta_6j1w5v8m', 3, 'meets_expectations', NULL, '2025-01-17 13:00:00'),
('rev_srt_r016', 'comp_srt_c019', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Improved after revision', '2025-01-25 09:00:00'),
('rev_srt_r017', 'comp_srt_c020', 'srt_meta_1x4j8t5k', 3, 'meets_expectations', NULL, '2025-02-10 14:00:00'),
('rev_srt_r018', 'comp_srt_c021', 'srt_meta_8x3k9m2p', 5, 'exceptional', 'Exceptional depth of analysis', '2025-03-02 10:00:00'),
('rev_srt_r019', 'comp_srt_c023', 'srt_meta_6j1w5v8m', 4, 'meets_expectations', NULL, '2025-04-13 15:30:00'),
('rev_srt_r020', 'comp_srt_c024', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', 'Meets baseline requirements', '2025-05-07 11:00:00'),
('rev_srt_r021', 'comp_srt_c026', 'srt_meta_1x4j8t5k', 4, 'meets_expectations', NULL, '2025-07-28 09:00:00'),
('rev_srt_r022', 'comp_srt_c027', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-09-08 14:00:00'),
('rev_srt_r023', 'comp_srt_c028', 'srt_meta_6j1w5v8m', 3, 'meets_expectations', NULL, '2025-10-20 10:30:00'),
('rev_srt_r024', 'comp_srt_c031', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-04-30 13:00:00'),
('rev_srt_r025', 'comp_srt_c034', 'srt_meta_1x4j8t5k', 4, 'meets_expectations', 'Good consistent quality', '2025-12-13 09:00:00'),

-- Rajesh Sharma reviews
('rev_srt_r026', 'comp_srt_c035', 'srt_meta_4n7q2r5t', 3, 'meets_expectations', NULL, '2025-01-14 11:00:00'),
('rev_srt_r027', 'comp_srt_c036', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Well-structured responses', '2025-01-23 15:30:00'),
('rev_srt_r028', 'comp_srt_c037', 'srt_meta_4n7q2r5t', 3, 'meets_expectations', 'Better after rework', '2025-02-15 10:00:00'),
('rev_srt_r029', 'comp_srt_c038', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-03-06 14:00:00'),
('rev_srt_r030', 'comp_srt_c039', 'srt_meta_1x4j8t5k', 3, 'meets_expectations', NULL, '2025-03-25 09:00:00'),
('rev_srt_r031', 'comp_srt_c041', 'srt_meta_4n7q2r5t', 4, 'meets_expectations', NULL, '2025-05-17 13:00:00'),
('rev_srt_r032', 'comp_srt_c042', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Strong analytical work', '2025-06-25 10:30:00'),
('rev_srt_r033', 'comp_srt_c044', 'srt_meta_4n7q2r5t', 5, 'exceptional', 'One of the best submissions this quarter', '2025-09-15 15:00:00'),
('rev_srt_r034', 'comp_srt_c045', 'srt_meta_1x4j8t5k', 3, 'meets_expectations', NULL, '2025-10-27 11:00:00'),
('rev_srt_r035', 'comp_srt_c047', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-02-25 14:00:00'),
('rev_srt_r036', 'comp_srt_c049', 'srt_meta_4n7q2r5t', 3, 'meets_expectations', NULL, '2025-07-15 09:30:00'),
('rev_srt_r037', 'comp_srt_c051', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-05-30 13:00:00'),

-- Anika Muller reviews
('rev_srt_r038', 'comp_srt_c052', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-01-15 10:00:00'),
('rev_srt_r039', 'comp_srt_c053', 'srt_meta_4n7q2r5t', 3, 'meets_expectations', NULL, '2025-01-27 14:30:00'),
('rev_srt_r040', 'comp_srt_c054', 'srt_meta_6j1w5v8m', 4, 'meets_expectations', 'Clear preference justifications', '2025-02-17 09:00:00'),
('rev_srt_r041', 'comp_srt_c055', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-03-13 13:00:00'),
('rev_srt_r042', 'comp_srt_c057', 'srt_meta_4n7q2r5t', 4, 'meets_expectations', 'Good work on second attempt', '2025-05-20 10:30:00'),
('rev_srt_r043', 'comp_srt_c058', 'srt_meta_6j1w5v8m', 3, 'meets_expectations', NULL, '2025-06-30 15:00:00'),
('rev_srt_r044', 'comp_srt_c059', 'srt_meta_8x3k9m2p', 5, 'exceptional', 'Excellent comparative analysis', '2025-08-15 11:00:00'),
('rev_srt_r045', 'comp_srt_c060', 'srt_meta_4n7q2r5t', 3, 'meets_expectations', NULL, '2025-09-25 14:00:00'),
('rev_srt_r046', 'comp_srt_c063', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-03-05 09:30:00'),
('rev_srt_r047', 'comp_srt_c065', 'srt_meta_6j1w5v8m', 4, 'meets_expectations', NULL, '2025-07-10 13:00:00'),
('rev_srt_r048', 'comp_srt_c066', 'srt_meta_4n7q2r5t', 3, 'meets_expectations', 'Solid work', '2025-10-17 10:00:00'),

-- Maria Garcia reviews (before removal)
('rev_srt_r049', 'comp_srt_c068', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', NULL, '2025-01-11 10:00:00'),
('rev_srt_r050', 'comp_srt_c069', 'srt_meta_4n7q2r5t', 2, 'below_expectations', 'Lacks depth in preference reasoning', '2025-01-18 14:30:00'),
('rev_srt_r051', 'comp_srt_c070', 'srt_meta_6j1w5v8m', 3, 'meets_expectations', NULL, '2025-01-30 09:00:00'),
('rev_srt_r052', 'comp_srt_c071', 'srt_meta_8x3k9m2p', 1, 'unacceptable', 'Incomplete work, significant quality issues', '2025-02-08 13:00:00'),
('rev_srt_r053', 'comp_srt_c072', 'srt_meta_4n7q2r5t', 2, 'below_expectations', 'Below expected quality threshold', '2025-01-15 15:00:00'),
('rev_srt_r054', 'comp_srt_c074', 'srt_meta_6j1w5v8m', 3, 'meets_expectations', NULL, '2025-02-04 10:30:00'),

-- Rejected completions reviews
('rev_srt_r055', 'comp_srt_c075', 'srt_meta_4n7q2r5t', 2, 'below_expectations', 'Major issues with ranking methodology', '2025-01-17 11:00:00'),
('rev_srt_r056', 'comp_srt_c076', 'srt_meta_8x3k9m2p', 1, 'unacceptable', 'Failed to follow guidelines', '2025-01-23 09:30:00'),
('rev_srt_r057', 'comp_srt_c077', 'srt_meta_4n7q2r5t', 2, 'below_expectations', 'Needs significant improvement', '2025-02-13 14:00:00'),
('rev_srt_r058', 'comp_srt_c078', 'srt_meta_8x3k9m2p', 2, 'below_expectations', 'Insufficient justification for rankings', '2025-05-17 10:00:00'),
('rev_srt_r059', 'comp_srt_c079', 'srt_meta_6j1w5v8m', 2, 'below_expectations', 'Quality declined from previous submissions', '2025-11-14 14:00:00'),

-- ============================================================
-- Safety project reviews
-- Alex Thompson is a reviewer on the safety project
-- ============================================================

-- Tomasz Kowalski safety reviews (mostly reviewed by Alex Thompson)
('rev_srt_r060', 'comp_srt_c080', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Thorough safety assessment', '2025-01-12 10:00:00'),
('rev_srt_r061', 'comp_srt_c081', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-01-19 14:30:00'),
('rev_srt_r062', 'comp_srt_c082', 'srt_meta_8x3k9m2p', 5, 'exceptional', 'Excellent identification of safety concerns', '2025-01-27 09:00:00'),
('rev_srt_r063', 'comp_srt_c083', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', 'Adequate after rework', '2025-02-11 13:00:00'),
('rev_srt_r064', 'comp_srt_c084', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-02-25 10:30:00'),
('rev_srt_r065', 'comp_srt_c085', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Solid safety labeling work', '2025-03-15 15:00:00'),
('rev_srt_r066', 'comp_srt_c086', 'srt_meta_3v9m2p6w', 4, 'meets_expectations', NULL, '2025-04-06 11:00:00'),
('rev_srt_r067', 'comp_srt_c087', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', NULL, '2025-04-27 14:00:00'),
('rev_srt_r068', 'comp_srt_c088', 'srt_meta_3v9m2p6w', 5, 'exceptional', 'Outstanding red team analysis', '2025-05-20 09:30:00'),
('rev_srt_r069', 'comp_srt_c089', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-06-13 13:00:00'),
('rev_srt_r070', 'comp_srt_c090', 'srt_meta_3v9m2p6w', 4, 'meets_expectations', 'Good safety assessment', '2025-07-07 10:00:00'),
('rev_srt_r071', 'comp_srt_c091', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', NULL, '2025-08-19 14:30:00'),
('rev_srt_r072', 'comp_srt_c092', 'srt_meta_3v9m2p6w', 4, 'meets_expectations', NULL, '2025-09-30 09:00:00'),
('rev_srt_r073', 'comp_srt_c093', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Strong safety analysis', '2025-11-10 13:00:00'),
('rev_srt_r074', 'comp_srt_c095', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-02-19 10:00:00'),
('rev_srt_r075', 'comp_srt_c096', 'srt_meta_3v9m2p6w', 3, 'meets_expectations', NULL, '2025-04-02 14:30:00'),
('rev_srt_r076', 'comp_srt_c097', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-06-04 09:00:00'),
('rev_srt_r077', 'comp_srt_c098', 'srt_meta_3v9m2p6w', 5, 'exceptional', 'Best safety review this period', '2025-07-25 13:30:00'),
('rev_srt_r078', 'comp_srt_c099', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-10-15 10:00:00'),
('rev_srt_r079', 'comp_srt_c100', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', NULL, '2025-03-20 14:00:00'),
('rev_srt_r080', 'comp_srt_c101', 'srt_meta_3v9m2p6w', 4, 'meets_expectations', NULL, '2025-11-25 09:30:00'),

-- Carlos Rodriguez safety reviews
('rev_srt_r081', 'comp_srt_c117', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Strong legal perspective on safety', '2025-01-14 10:00:00'),
('rev_srt_r082', 'comp_srt_c118', 'srt_meta_2m6t4w9j', 3, 'meets_expectations', NULL, '2025-01-23 14:30:00'),
('rev_srt_r083', 'comp_srt_c119', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-02-10 09:00:00'),
('rev_srt_r084', 'comp_srt_c120', 'srt_meta_2m6t4w9j', 3, 'meets_expectations', 'Meets requirements', '2025-03-02 13:00:00'),
('rev_srt_r085', 'comp_srt_c121', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', 'Improved after rework', '2025-03-23 10:30:00'),
('rev_srt_r086', 'comp_srt_c122', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-04-17 15:00:00'),
('rev_srt_r087', 'comp_srt_c123', 'srt_meta_8x3k9m2p', 5, 'exceptional', 'Exceptional legal analysis applied to safety review', '2025-05-13 11:00:00'),
('rev_srt_r088', 'comp_srt_c124', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-06-20 14:00:00'),
('rev_srt_r089', 'comp_srt_c125', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', NULL, '2025-08-02 09:30:00'),
('rev_srt_r090', 'comp_srt_c126', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', 'Well-reasoned safety concerns', '2025-09-10 13:00:00'),
('rev_srt_r091', 'comp_srt_c127', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-10-23 10:00:00'),
('rev_srt_r092', 'comp_srt_c128', 'srt_meta_2m6t4w9j', 3, 'meets_expectations', NULL, '2025-12-03 14:30:00'),
('rev_srt_r093', 'comp_srt_c130', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Good work', '2025-03-30 09:00:00'),
('rev_srt_r094', 'comp_srt_c131', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-06-04 13:00:00'),
('rev_srt_r095', 'comp_srt_c132', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', NULL, '2025-08-20 10:30:00'),
('rev_srt_r096', 'comp_srt_c134', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Thorough prompt-response review', '2025-07-15 14:00:00'),
('rev_srt_r097', 'comp_srt_c135', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-12-23 09:00:00'),

-- Jonathan Blake safety reviews
('rev_srt_r098', 'comp_srt_c136', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Good legal context in safety labeling', '2025-01-16 10:30:00'),
('rev_srt_r099', 'comp_srt_c137', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-01-30 14:00:00'),
('rev_srt_r100', 'comp_srt_c138', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', 'Improved on second attempt', '2025-02-17 09:30:00'),
('rev_srt_r101', 'comp_srt_c139', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-03-13 13:00:00'),
('rev_srt_r102', 'comp_srt_c140', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Excellent regulatory perspective', '2025-04-10 10:00:00'),
('rev_srt_r103', 'comp_srt_c141', 'srt_meta_2m6t4w9j', 3, 'meets_expectations', NULL, '2025-05-23 14:30:00'),
('rev_srt_r104', 'comp_srt_c142', 'srt_meta_8x3k9m2p', 5, 'exceptional', 'Outstanding safety classification work', '2025-07-05 09:00:00'),
('rev_srt_r105', 'comp_srt_c143', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-08-13 13:00:00'),
('rev_srt_r106', 'comp_srt_c144', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Strong analysis', '2025-09-25 10:30:00'),
('rev_srt_r107', 'comp_srt_c145', 'srt_meta_2m6t4w9j', 3, 'meets_expectations', NULL, '2025-11-07 14:00:00'),
('rev_srt_r108', 'comp_srt_c147', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', NULL, '2025-02-23 09:00:00'),
('rev_srt_r109', 'comp_srt_c148', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', 'Solid cross-domain expertise', '2025-04-25 13:30:00'),
('rev_srt_r110', 'comp_srt_c149', 'srt_meta_8x3k9m2p', 3, 'meets_expectations', NULL, '2025-07-20 10:00:00'),
('rev_srt_r111', 'comp_srt_c150', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-10-10 14:30:00'),
('rev_srt_r112', 'comp_srt_c151', 'srt_meta_8x3k9m2p', 4, 'meets_expectations', 'Good prompt-response assessment', '2025-09-13 09:00:00'),

-- Reviews for Alex Thompson's safety completions (reviewed by Tomasz and Carlos)
('rev_srt_r113', 'comp_srt_c102', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-01-13 10:00:00'),
('rev_srt_r114', 'comp_srt_c103', 'srt_meta_3v9m2p6w', 3, 'meets_expectations', NULL, '2025-01-25 14:30:00'),
('rev_srt_r115', 'comp_srt_c104', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', 'Good cross-project perspective', '2025-02-13 09:00:00'),
('rev_srt_r116', 'comp_srt_c105', 'srt_meta_3v9m2p6w', 4, 'meets_expectations', NULL, '2025-03-10 13:00:00'),
('rev_srt_r117', 'comp_srt_c106', 'srt_meta_2m6t4w9j', 3, 'meets_expectations', NULL, '2025-04-15 10:30:00'),
('rev_srt_r118', 'comp_srt_c107', 'srt_meta_3v9m2p6w', 4, 'meets_expectations', NULL, '2025-05-27 14:00:00'),
('rev_srt_r119', 'comp_srt_c108', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', 'Reliable safety analysis', '2025-07-13 09:30:00'),
('rev_srt_r120', 'comp_srt_c109', 'srt_meta_3v9m2p6w', 3, 'meets_expectations', NULL, '2025-08-25 13:00:00'),
('rev_srt_r121', 'comp_srt_c110', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-10-06 10:00:00'),
('rev_srt_r122', 'comp_srt_c111', 'srt_meta_3v9m2p6w', 4, 'meets_expectations', 'Consistent quality', '2025-11-20 14:30:00'),
('rev_srt_r123', 'comp_srt_c112', 'srt_meta_2m6t4w9j', 3, 'meets_expectations', NULL, '2025-02-20 09:00:00'),
('rev_srt_r124', 'comp_srt_c114', 'srt_meta_3v9m2p6w', 5, 'exceptional', 'Top-quality safety evaluation', '2025-06-23 13:00:00'),
('rev_srt_r125', 'comp_srt_c115', 'srt_meta_2m6t4w9j', 4, 'meets_expectations', NULL, '2025-09-17 10:30:00'),

-- Rejected safety completion reviews
('rev_srt_r126', 'comp_srt_c152', 'srt_meta_8x3k9m2p', 2, 'below_expectations', 'Missed critical safety categories', '2025-02-09 10:00:00'),
('rev_srt_r127', 'comp_srt_c153', 'srt_meta_8x3k9m2p', 2, 'below_expectations', 'Incomplete safety assessment', '2025-03-21 14:00:00'),
('rev_srt_r128', 'comp_srt_c154', 'srt_meta_8x3k9m2p', 1, 'unacceptable', 'Failed to identify obvious safety concerns', '2025-02-15 09:00:00');
