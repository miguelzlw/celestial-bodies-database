## 2025-02-18 - PostgreSQL Foreign Key Indexes
**Learning:** PostgreSQL does not automatically create indexes on foreign key columns, leading to potential full table scans on JOIN operations and foreign key checks.
**Action:** Always verify if foreign key columns have corresponding B-tree indexes created in database schema dumps.
