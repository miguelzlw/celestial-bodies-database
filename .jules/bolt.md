# Bolt's Journal - Critical Learnings

## 2025-05-18 - PostgreSQL Foreign Key Indexing Performance

**Learning:** PostgreSQL does not automatically create indexes on foreign key columns (unlike primary key or unique constraints). Queries performing `JOIN` operations across related tables (`star` -> `galaxy`, `planet` -> `star`, `moon` -> `planet`) or filtered by foreign key IDs require sequential table scans O(N) without explicit indexes.

**Action:** Always create B-tree indexes on foreign key columns (`galaxy_id`, `star_id`, `planet_id`) to transform foreign key JOINs and lookups from O(N) sequential scans to O(log N) index scans.
