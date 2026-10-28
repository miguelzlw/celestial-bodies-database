# Bolt's Journal - Critical Learnings

## 2025-05-18 - Foreign Key Indexes and Redundant FK Constraints in SQL Dumps
**Learning:** PostgreSQL dumps do not automatically create indexes on foreign key columns (such as `galaxy_id` in `star`, `star_id` in `planet`, or `planet_id` in `moon`). Without explicit indexes on FK columns, JOIN queries and foreign key validation checks require full sequential scans ($O(N)$). Additionally, duplicate foreign key definitions (e.g., `fk_galaxy` and `star_galaxy_id_fkey`) cause double constraint validation on row mutations.
**Action:** Always create B-Tree indexes on foreign key columns used in joins/relational checks, and drop redundant duplicate FK constraints to reduce write overhead.
