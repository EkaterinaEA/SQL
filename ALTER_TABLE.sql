-- Database: postgres

-- ALTER TABLE

-- Syntax:
ALTER TABLE table_name [alter_option ...];

-- Adding a new column
ALTER TABLE table_name ADD column_name datatype;

-- ADD a New Column to an existing table

-- +----+----------+-----+-----------+----------+
-- | ID | NAME     | AGE | ADDRESS   | SALARY   |
-- +----+----------+-----+-----------+----------+

ALTER TABLE CUSTOMERS ADD SEX char(1);

SELECT * FROM CUSTOMERS;
-- +----+---------+-----+-----------+----------+------+
-- | ID | NAME    | AGE | ADDRESS   | SALARY   | SEX  |
-- +----+---------+-----+-----------+----------+------+

-- Adding a column after an existing column
ALTER TABLE table_name ADD COLUMN (column_name column_definition...) AFTER existing_column;

-- Example:
ALTER TABLE Employee ADD COLUMN Address VARCHAR(50) AFTER Location;

-- Adding a column at start
ALTER TABLE table_name ADD COLUMN (column_name column_definition...) FIRST;

-- Example:
ALTER TABLE Employee ADD COLUMN ID INT FIRST;

-- Adding an index
ALTER TABLE table_name ADD INDEX index_name (column1, …, columnN) .

-- Add an index named sample_index on the columns NAME and Salary of Employee table
ALTER TABLE Employee ADD INDEX sample_index (Name, Salary);

-- Add a primary key
ALTER TABLE table_name ADD CONSTRAINT MyPrimaryKey PRIMARY KEY (column1, column2...);

-- Example:
ALTER TABLE Employee ADD COLUMN ID INT FIRST;

-- Add primary key constraint on the column ID of EMPLOYEES table
ALTER TABLE Employee ADD CONSTRAINT MyPrimaryKey PRIMARY KEY(ID);

-- Add a foreign key
ALTER TABLE table_name ADD CONSTRAINT key FORIEGN KEY (column_name);

-- Example:
CREATE table Test (ID int PRIMARY KEY);
ALTER TABLE Employee ADD COLUMN ID INT FIRST;
ALTER TABLE Employee ADD CONSTRAINT fk FOREIGN KEY(ID) REFERENCES test(ID);

-- Add a constraint
ALTER TABLE table_name ADD CONSTRAINT constraint_name UNIQUE(column1, column2...);

-- Add a UNIQUE constraint Phone to the table Employee 
ALTER TABLE Employee ADD CONSTRAINT con UNIQUE(Phone);

-- Drop a column
ALTER TABLE table_name DROP COLUMN column_name;

-- Example:
ALTER TABLE CUSTOMERS DROP COLUMN SEX;

-- Drop an index
ALTER TABLE table_name DROP INDEX index_name;

-- Example:
ALTER TABLE Employee DROP INDEX sample_index;

-- Drop a Primary Key
ALTER TABLE table_name DROP PRIMARY KEY;

-- Delete primary key constraint from the column ID of sample table
create table sample (ID INT);
alter table sample add CONSTRAINT PRIMARY KEY (ID);

EXEC sp_help sample;
-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | ID    | int  | NO   | PRI | NULL    |       |
-- +-------+------+------+-----+---------+-------+

alter table sample drop PRIMARY KEY;

EXEC sp_help sample;
-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | ID    | int  | NO   |     | NULL    |       |
-- +-------+------+------+-----+---------+-------+

-- Drop a foreign key
ALTER TABLE table_name DROP FOREIGN KEY key_name;

--Example:
ALTER TABLE Employee DROP FOREIGN KEY fk;


