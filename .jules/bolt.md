## 2026-10-12 - Information Schema Query Filtering
**Learning:** Omitting `table_schema = 'public'` filters in PostgreSQL `information_schema` queries forces PostgreSQL and Node.js to fetch and process system catalog metadata (`pg_catalog`, `information_schema`), returning 17x more rows (e.g. 87 rows vs 5) into memory and causing both performance overhead and incorrect assertions.
**Action:** Always filter `information_schema` queries by `table_schema = 'public'` to restrict queries strictly to user tables.
