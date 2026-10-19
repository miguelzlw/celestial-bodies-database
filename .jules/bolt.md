## 2025-05-18 - PostgreSQL Foreign Key Indexing
**Learning:** PostgreSQL does not automatically create indexes on referencing foreign key columns in child tables. Adding indexes to foreign key columns (`galaxy_id`, `star_id`, `planet_id`) converts join queries and foreign key lookup filters from O(N) sequential scans to O(log N) index scans.
**Action:** Always check schema dumps for missing foreign key indexes when optimizing database query performance.
