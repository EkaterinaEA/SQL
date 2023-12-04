-- Database: postgres

-- Group By

-- Syntax:
SELECT column_name(s)
FROM table_name
GROUP BY column_name(s);

-- GROUP BY with Single Column

-- Group the above created CUSTOMERS table by the ADDRESS column and calculating the average salary of the customer from each city
SELECT ADDRESS, AVG(SALARY) as AVG_SALARY FROM CUSTOMERS GROUP BY ADDRESS;

-- GROUP BY with Multiple Columns

-- Group the records of the CUSTOMERS table based on the columns ADDRESS and AGE and sum of the salary
-- and named this value as TOTAL_SALARY
SELECT ADDRESS, AGE, SUM(SALARY) AS TOTAL_SALARY FROM CUSTOMERS GROUP BY ADDRESS, AGE;

-- GROUP BY with Aggregate Functions

SELECT COUNT(Name) as Net_cust, AGE
FROM Customers
GROUP BY AGE;

-- Example: Group the CUSTOMERS table based on AGE and counts the names of records in each group
SELECT AGE, COUNT(Name) FROM CUSTOMERS GROUP BY AGE;

-- GROUP BY with ORDER BY clause

-- Syntax:
SELECT column1, column2, ..., aggregate_function(columnX) AS alias
FROM table
GROUP BY column1, column2, ...
ORDER BY column1 [ASC | DESC], column2 [ASC | DESC], ...;

-- Example: Find the highest salary for each age, sorted by high to low
SELECT AGE, MAX(SALARY) AS MAX_SALARY FROM CUSTOMERS GROUP BY AGE ORDER BY MAX_SALARY DESC;

-- GROUP BY with HAVING clause

-- Syntax:
SELECT column1, column2, aggregate_function(column)
FROM table_name
GROUP BY column1, column2
HAVING condition;

-- Example: Filter the results to show only those groups where the average salary is greater than 8000
SELECT AGE, AVG(salary) AS avg_salary
FROM CUSTOMERS
GROUP BY AGE
HAVING AVG(salary) > 8000;
