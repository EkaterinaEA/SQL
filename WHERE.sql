-- Database: postgres

-- WHERE Clause

-- WHERE Clause in SELECT statement
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Example: Fetch the ID, NAME and SALARY fields from the CUSTOMERS table for the records where the SALARY is greater than 2000
SELECT ID, NAME, SALARY 
FROM CUSTOMERS
WHERE SALARY > 2000;

-- WHERE Clause in UPDATE statement
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Example: Increment the salary of the customer named Ramesh by 10000
UPDATE CUSTOMERS set SALARY = SALARY+10000 where NAME = 'Ramesh';

-- WHERE Clause with IN operator
WHERE column_name IN (value1, value2, ...);

-- Example: Display records with NAME values ‘Khilan’, ‘Hardik’ and ‘Muffy’ from the CUSTOMERS table
SELECT * from CUSTOMERS WHERE NAME IN ('Khilan', 'Hardik', 'Muffy');

-- WHERE Clause with NOT IN operator
WHERE column_name NOT IN (value1, value2, ...);

-- Example: Display the records from CUSTOMERS table, where AGE is NOT equal to ‘25’, ‘23’ and ‘22’.
SELECT * from CUSTOMERS WHERE AGE NOT IN (25, 23, 22);

-- WHERE Clause with LIKE operator
WHERE column_name LIKE pattern;

-- Example: Display all the records where the name starts with K and is at least 4 characters in length
SELECT * FROM CUSTOMERS
WHERE NAME LIKE 'K___%';

-- WHERE Clause with AND, OR operators
WHERE (condition1 OR condition2) AND condition3;

-- Example: Retrieve all rows from the CUSTOMERS table based on some conditions. 
-- The parentheses control the order of evaluation so that the OR operator is applied first
SELECT * FROM CUSTOMERS
WHERE (AGE = 25 OR salary < 4500) AND (name = 'Komal' OR name = 'Kaushik');
