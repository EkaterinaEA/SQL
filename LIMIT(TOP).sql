-- Database: postgres

-- LIMIT (TOP)

-- Syntax
SELECT TOP value column_name(s)
FROM table_name
WHERE [condition]

-- Example: fetch the top 4 records from the CUSTOMERS table without specifying any conditional clauses such as WHERE, ORDER BY, etc.
SELECT TOP 4 * FROM CUSTOMERS;

-- Using TOP Clause with ORDER BY Clause

-- Retrieve the top 4 records of the CUSTOMERS table in a sorted order. 
-- Here, we are sorting the table in descending order based on the SALARY column
SELECT TOP 4 * FROM CUSTOMERS ORDER BY SALARY DESC;

-- Using TOP Clause with PERCENT clause

-- Example: Select the first 40% of the records from the CUSTOMERS table sorted in the ascending order by their SALARY
SELECT TOP 40 PERCENT * FROM CUSTOMERS ORDER BY SALARY

-- Using TOP Clause and WITH TIES Clause

-- But, the first two salary values (in ascending order) in the table are 1500 and 2000 and 
-- there is another column in the CUSTOMERS table with salary value 2000 which is not included in the result.
-- If we want to retrieve all the columns with the first two salary values (when arranged in the ascending order). 
-- We need to use the WITH TIES clause
SELECT TOP 2 WITH TIES * FROM CUSTOMERS ORDER BY SALARY;

-- Using TOP Clause with WHERE Clause

--Example: Show the details of the first two customers whose name starts with ‘K’ from the CUSTOMERS table
SELECT TOP 2 * FROM CUSTOMERS WHERE NAME LIKE 'k%'

-- Using DELETE Statement with TOP Clause

-- Example: Delete the top 2 customers whose NAME starts with ‘K’
DELETE TOP(2) FROM CUSTOMERS WHERE NAME LIKE 'K%';
