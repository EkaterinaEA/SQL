-- Database: postgres

-- ORDER BY Clause

-- Syntax:
SELECT column-list 
FROM table_name 
[ORDER BY column1, column2, .. columnN] [ASC | DESC];

-- ORDER BY with ASC

-- Example: Sort the records of the CUSTOMERS table in ascending order based on the column NAME
SELECT * FROM CUSTOMERS ORDER BY NAME ASC
ORDER BY with DESC;

Example: Sort the records of the CUSTOMER table based on the descending order of the name of the customers
SELECT * FROM CUSTOMERS ORDER BY NAME DESC;

-- ORDER BY Multiple Columns

-- Example: Retrieve all records from the CUSTOMERS table and sorts them first by their age in ascending order, 
-- and then by their salary in descending order
SELECT * FROM CUSTOMERS ORDER BY AGE ASC, SALARY DESC;

-- ORDER BY with WHERE clause

-- Example: Retrieve all records from the CUSTOMERS table where the age of the customer is 25, 
-- and sorting them as per the descending order of their names
SELECT * FROM CUSTOMERS
WHERE AGE = 25
ORDER BY NAME DESC;

-- ORDER BY with TOP clause

-- Syntax:
SELECT TOP N column1, column2, ...
FROM table_name
ORDER BY column_name1 [ASC | DESC], column_name2 [ASC | DESC], ...

-- Example: Retrieve the top 4 records from the CUSTOMERS table based on their salary, 
-- and sorting them in ascending order based on their name
SELECT TOP 4 SALARY 
FROM CUSTOMERS
ORDER BY NAME;
