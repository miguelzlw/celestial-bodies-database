# Bolt's Journal - Critical Learnings Only

## 2026-11-04 - Unindexed Foreign Keys in PostgreSQL Database Dumps
**Learning:** PostgreSQL enforces foreign key constraints but does NOT automatically create indexes on foreign key referencing columns. Without explicit B-tree indexes on foreign keys (`moon.planet_id`, `planet.star_id`, `star.galaxy_id`), any JOIN or foreign key verification (especially on `DELETE` or `UPDATE` of parent rows) incurs full sequential table scans. Furthermore, redundant foreign key constraints (like duplicate definitions on the same column) cause duplicated verification overhead during write operations.
**Action:** When working with PostgreSQL schema definitions and dumps, check for missing indexes on foreign key referencing columns and redundant constraints. Index foreign key columns to transform sequential scans into bitmap/index scans (>60% query execution time reduction).
