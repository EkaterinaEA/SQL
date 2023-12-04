-- Database: postgres

-- IN Operator

-- Syntax:
WHERE column_name IN (value1, value2, value3, ...);

-- Using IN operator in SELECT Statement

-- Example: Display records with NAME equal to ‘Khilan’, ‘Hardik’ and ‘Muffy’ (string values). 
select * from CUSTOMERS WHERE NAME IN ('Khilan', 'Hardik', 'Muffy');

-- Using IN operator in UPDATE statement

-- Example: Change the records of the customers with age ‘25’ or ‘27’ and updating the age value to ‘30’
update customers set AGE = 30 where AGE IN (25, 27);

-- Using IN operator with NOT operator

-- Syntax:
WHERE column_name NOT IN (value1, value2, …);

-- Example: Display all the records from the CUSTOMERS table, where the AGE is NOT equal to ‘25’, ‘23’ and ‘22’
select * from CUSTOMERS
WHERE AGE NOT IN (25, 23, 22);

-- Using IN operator with column

-- Example: Select the rows with the value 2000 of the SALARY column
select * from CUSTOMERS
WHERE 2000 IN (SALARY);

-- Using subquery with IN operator

-- Syntax:
WHERE column_name IN (subquery);

-- Example: Display all the records from the CUSTOMERS table where the NAME of the customer is obtained with SALARY greater than 2000
select * from CUSTOMERS
WHERE NAME IN (SELECT NAME from CUSTOMERS WHERE SALARY > 2000);
