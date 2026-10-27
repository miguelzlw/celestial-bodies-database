## 2025-05-10 - Indexes on foreign key columns in PostgreSQL
**Learning:** PostgreSQL does not automatically create indexes on foreign key columns. Creating B-tree indexes on foreign key columns accelerates JOIN operations and foreign key constraints enforcement.
**Action:** Always check schema dumps or table migrations for foreign key columns that lack explicit indexes when optimizing SQL performance.
