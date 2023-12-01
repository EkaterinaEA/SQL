-- Database: postgres

-- Constraints

--Dropping Constraints:
ALTER TABLE table_name DROP CONSTRAINT constraint_name;

-- Drop the constraint EMPLOYEES_PK from the EMPLOYEES table
ALTER TABLE EMPLOYEES DROP CONSTRAINT EMPLOYEES_PK;

-- Drop the primary key constraint from the EMPLOYEES table
ALTER TABLE EMPLOYEES DROP PRIMARY KEY;
