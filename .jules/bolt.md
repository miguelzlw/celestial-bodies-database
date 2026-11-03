## 2026-10-12 - Foreign Key Indexing & Duplicate Constraint Pruning
**Learning:** In PostgreSQL relational schemas, foreign keys are not automatically indexed by default, leading to sequential scans during parent record deletions/updates and queries joining on foreign key relationships. Additionally, accidental duplicate foreign key constraints (e.g. `fk_galaxy` and `star_galaxy_id_fkey`) cause double constraint validation overhead on inserts and updates.
**Action:** Always index foreign key referencing columns on relational tables and inspect constraints to remove duplicate FK definitions.
