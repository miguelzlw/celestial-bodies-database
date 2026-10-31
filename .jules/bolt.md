# Bolt's Journal - Critical Learnings

## 2026-10-31 - PostgreSQL FK Indexing and Duplicate Constraint Overhead
**Learning:** PostgreSQL dumps do not automatically create indexes on foreign key columns (`star.galaxy_id`, `planet.star_id`, `moon.planet_id`). Without explicit B-Tree indexes, JOIN queries and foreign key validation checks require full sequential scans ($O(N)$) rather than index lookups ($O(\log N)$). Furthermore, duplicate foreign key definitions (e.g., `fk_galaxy` and `star_galaxy_id_fkey`) trigger redundant constraint validation overhead on every row mutation.
**Action:** Inspect relational database schemas to ensure foreign key columns have dedicated B-Tree indexes and verify there are no duplicate foreign key constraint definitions on the same column.
