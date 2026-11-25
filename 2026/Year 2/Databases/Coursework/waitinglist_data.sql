-- G6031 Databases coursework 2026-27
-- waitinglist_data.sql: sample rows for the WaitingList table you create in Task 1.
-- Run it after your Task 1 statement has succeeded. If it fails, check the
-- table and column names in your Task 1 answer against the question paper.
-- Rerunning it adds the rows again only after you have rerun cwk_setup.sql and Task 1.
INSERT INTO WaitingList (gardenerId, siteId, addedAt, preferredSize, notes) VALUES
  (10, 1, '2025-11-02 08:15:00', 'full', NULL),
  (9, 1, '2026-03-01 18:00:00', 'either', NULL),
  (14, 1, '2026-09-05 09:30:00', 'half', 'Would like a plot near the gate'),
  (13, 2, '2026-06-10 10:00:00', 'full', NULL),
  (3, 2, '2026-05-20 12:00:00', 'full', NULL),
  (5, 2, '2026-05-20 12:00:00', 'half', NULL),
  (14, 2, '2026-09-05 09:30:00', 'either', NULL),
  (10, 2, '2026-10-01 10:00:00', 'either', 'Previous tenant of A2'),
  (9, 3, '2026-07-07 07:07:00', 'full', NULL),
  (14, 3, '2026-10-10 10:10:00', 'half', NULL),
  (6, 4, '2024-06-01 11:00:00', 'half', NULL),
  (12, 5, '2026-02-20 09:00:00', 'either', NULL);
