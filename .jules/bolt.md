## 2025-05-18 - PostgreSQL FK Indexing & Duplicate Constraint Overhead
**Learning:** PostgreSQL foreign key constraints do not automatically create indexes on FK columns. Without explicit B-tree indexes, queries involving JOINs or FK cascading/integrity checks perform O(N) sequential scans on child tables instead of O(log N) index scans. Furthermore, duplicate foreign key definitions trigger redundant constraint validations on every write statement.
**Action:** Always check database dumps for missing FK indexes and duplicate constraint definitions on relational tables.
