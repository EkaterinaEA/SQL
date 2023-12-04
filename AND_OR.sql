-- Database: postgres

-- AND and OR Conjunctive Operators

-- The AND Operator

-- Syntax:
WHERE [condition1] AND [condition2]...AND [conditionN];

-- Example: Fetch the ID, Name and Salary fields from the CUSTOMERS table, 
-- where the salary is greater than 2000 and the age is less than 25 years
SELECT ID, NAME, SALARY 
FROM CUSTOMERS
WHERE SALARY > 2000 AND age < 25;

-- Multiple AND Operators

-- Select all records from the CUSTOMERS table where the name of the customer starts with 'K', 
-- the age of the customer is greater than or equal to 22, and their salary is less than 3742
SELECT * FROM CUSTOMERS
WHERE NAME LIKE 'k%' AND AGE >= 22 AND SALARY < 3742;

-- AND with other Logical Operators

-- Select all records from the CUSTOMERS table where the condition (salary is greater than 4500 and the age is less than 26) 
-- is false. The "NOT" operator negates the entire condition, and the "AND" operator combines two conditions
SELECT * FROM CUSTOMERS
WHERE NOT (SALARY > 4500 AND AGE < 26);

-- AND with UPDATE statement

-- Syntax:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition1 AND condition2 AND ...;

-- Example: Update the salary of all the customers whose age is greater than 27 and updating it to ‘55000’ using UPDATE statement
UPDATE CUSTOMERS
SET salary = 55000
WHERE AGE > 27;

-- The OR Operator

-- Example: Fetch the ID, Name and Salary fields from the CUSTOMERS table, 
-- where the salary is greater than 2000 OR the age is less than 25 years.
SELECT ID, NAME, SALARY 
FROM CUSTOMERS
WHERE SALARY > 2000 OR age < 25;

-- Multiple OR operators

-- Example: Select all records from the CUSTOMERS table where either the name of the customer ends with 'l', 
-- or the salary of the customer is greater than 10560, or their age is less than 25
SELECT * FROM CUSTOMERS
WHERE NAME LIKE '%l' OR SALARY > 10560 OR AGE < 25;

-- OR with AND operator
WHERE (condition1 OR condition2) AND condition3;

-- Example: Retrieve all rows from the "CUSTOMERS" table where the age is equal to 25 or the salary is less than 4500 
-- and the name is either Komal or Kaushik. The parentheses control the order of evaluation so that the OR operator is applied first, 
-- followed by the AND operator
SELECT * FROM CUSTOMERS
WHERE (AGE = 25 OR salary < 4500) AND (name = 'Komal' OR name = 'Kaushik');

-- OR with DELETE statement

-- Syntax:
DELETE FROM table_name
WHERE column1 = 'value1' OR column2 = 'value2';

-- Example: Delete the records from the customers table where either the age of the customer equals 25 
-- or their salary is less than 2000
DELETE FROM CUSTOMERS
WHERE AGE = 25 OR SALARY < 2000;
