-- Database: postgres

-- ANY, ALL Operators

-- Syntax:
Column_name operator ANY (subquery);

-- Example: List out the details of all the customers whose salary is greater than the salary of any customer whose AGE is 32 
-- i.e. Chaitali, Hardik, Komal and Muffy in this case
select * from customers
WHERE SALARY > ANY (select SALARY from CUSTOMERS where AGE = 32);

-- Find the distinct/different AGE of customers having any salary less than the average salary 
-- of all the customers from the CUSTOMERS table previously created
SELECT DISTINCT AGE
FROM customers
WHERE SALARY < ANY (SELECT avg(SALARY) FROM CUSTOMERS);

-- Return the details of all the customers whose AGE is equal to the age of ANY customer whose NAME starts with ‘K’
select * from customers
WHERE AGE = ANY (SELECT AGE FROM CUSTOMERS where NAME LIKE 'K%');

-- ALL with WHERE statement

-- Return the details of all the customers whose salary is not equal to the salary of any customer whose AGE is 25
select * from CUSTOMERS where SALARY <> ALL (select SALARY from CUSTOMERS where AGE = 25);

-- ALL with HAVING statement
select NAME, AGE, ADDRESS, SALARY from CUSTOMERS
GROUP BY NAME, AGE, ADDRESS, SALARY
HAVING SALARY < ALL (SELECT avg(SALARY) from CUSTOMERS);
