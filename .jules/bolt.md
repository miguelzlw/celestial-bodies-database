## 2025-05-18 - PostgreSQL Foreign Key Indexing Optimization

**Learning:** PostgreSQL automatically creates B-tree indexes for Primary Keys and Unique constraints, but does NOT create indexes on Foreign Key columns by default. Queries joining child and parent tables or performing CASCADE operations require sequential scans ($O(N)$) unless explicit indexes exist on foreign key columns.

**Action:** Always inspect PostgreSQL schema definitions for foreign key relationships (`galaxy_id`, `star_id`, `planet_id`) and add B-tree indexes on foreign key columns to ensure $O(\log N)$ index lookups for joins and constraint validation.
