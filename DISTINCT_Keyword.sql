-- Database: postgres

-- DISTINCT Keyword

-- Syntax
SELECT DISTINCT column1, column2,.....columnN FROM table_name

-- DISTINCT keyword on Single Column
SELECT DISTINCT SALARY FROM CUSTOMERS ORDER BY SALARY;

-- DISTINCT keyword on multiple columns

-- Retrieve a list of all unique combinations of customer's age and salary
SELECT DISTINCT AGE, SALARY FROM CUSTOMERS ORDER BY AGE;

-- DISTINCT keyword with COUNT() function

-- Syntax
SELECT COUNT(DISTINCT column_name) FROM table_name WHERE condition;

-- Example: Retrieve the count of distinct age of the customers
SELECT COUNT(DISTINCT AGE) as UniqueAge  FROM CUSTOMERS;

-- DISTINCT keyword with NULL values

-- Example: Update two records of the CUSTOMERS table and modify their salary values to NULL
UPDATE CUSTOMERS SET SALARY = NULL WHERE ID IN(6,4);

-- Retrieve the distinct salary of the customers
SELECT DISTINCT SALARY FROM CUSTOMERS ORDER BY SALARY;
