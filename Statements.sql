-- Database: postgres

переделать неуниверсальные команды

-- Create database
CREATE DATABASE database_name;

-- Use database
USE database_name;

-- Drop database
DROP DATABASE database_name;

-- SELECT Statement
SELECT column1, column2....columnN
FROM   table_name;

-- DISTINCT Clause
SELECT DISTINCT column1, column2....columnN
FROM   table_name;

-- WHERE Clause
SELECT column1, column2....columnN
FROM   table_name
WHERE  CONDITION;

-- AND/OR Clause
SELECT column1, column2....columnN
FROM   table_name
WHERE  CONDITION-1 {AND|OR} CONDITION-2;

-- IN Clause
SELECT column1, column2....columnN
FROM   table_name
WHERE  column_name IN (val-1, val-2,...val-N);

-- BETWEEN Clause
SELECT column1, column2....columnN
FROM   table_name
WHERE  column_name BETWEEN val-1 AND val-2;

-- LIKE Clause
SELECT column1, column2....columnN
FROM   table_name
WHERE  column_name LIKE { PATTERN };

-- ORDER BY Clause
SELECT column1, column2....columnN
FROM   table_name
WHERE  CONDITION
ORDER BY column_name {ASC|DESC};

-- GROUP BY Clause
SELECT SUM(column_name)
FROM   table_name
WHERE  CONDITION
GROUP BY column_name;

-- COUNT Clause
SELECT COUNT(column_name)
FROM   table_name
WHERE  CONDITION;

-- HAVING Clause
SELECT SUM(column_name)
FROM   table_name
WHERE  CONDITION
GROUP BY column_name
HAVING (arithmetic function condition);

--CREATE TABLE Statement
CREATE TABLE table_name(
   column1 datatype,
   column2 datatype,
   column3 datatype,
   .....
   columnN datatype,
   PRIMARY KEY( one or more columns )
);

-- DROP TABLE Statement
DROP TABLE table_name;

-- CREATE INDEX Statement
CREATE UNIQUE INDEX index_name
ON table_name ( column1, column2,...columnN);

-- DROP INDEX Statement
ALTER TABLE table_name
DROP INDEX index_name;

-- DESC Statement
DESC table_name;

-- TRUNCATE TABLE Statement
TRUNCATE TABLE table_name;

-- ALTER TABLE Statement
ALTER TABLE table_name {ADD|DROP|MODIFY} column_name {data_type};

-- ALTER TABLE Statement (Rename)
ALTER TABLE table_name RENAME TO new_table_name;

-- INSERT INTO Statement
INSERT INTO table_name( column1, column2....columnN)
VALUES ( value1, value2....valueN);

-- UPDATE Statement
UPDATE table_name
SET column1 = value1, column2 = value2....columnN=valueN
[ WHERE  CONDITION ];

-- DELETE Statement
DELETE FROM table_name
WHERE  {CONDITION};

-- CREATE DATABASE Statement
CREATE DATABASE database_name;

-- DROP DATABASE Statement
DROP DATABASE database_name;

-- USE Statement
USE database_name;

-- COMMIT Statement
COMMIT;

-- ROLLBACK Statement
ROLLBACK;


















