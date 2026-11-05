# Bolt's Performance Journal

## 2026-10-12 - Redundant Foreign Key Constraint Overhead
**Learning:** Having multiple foreign key constraints pointing from the same source table and column to the same destination table and column (e.g. `star(galaxy_id) -> galaxy(galaxy_id)`) causes PostgreSQL to attach multiple RI (referential integrity) triggers to the table. Every INSERT/UPDATE on the child table fires redundant check triggers, and DELETE on the parent table inspects child constraints multiple times.
**Action:** When inspecting SQL schemas or database dumps, verify constraint uniqueness across table columns to eliminate duplicate RI triggers.
