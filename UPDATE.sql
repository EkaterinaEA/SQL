-- Database: postgres

-- UPDATE Query

--Syntax:
UPDATE table_name
SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];

-- Example: Update the ADDRESS for a customer whose ID number is 6 in the table.
UPDATE CUSTOMERS
SET ADDRESS = 'Pune'
WHERE ID = 6;

-- Updating Multiple Rows and Columns

-- Syntax:
UPDATE table_name
SET column_name1 = new_value, column_name2 = new_value...
WHERE condition(s)

-- Example: If we want to modify all the AGE and the SALARY column values in the CUSTOMERS table, 
-- we do not need to use the WHERE clause as the UPDATE query would be enough. 
-- Following query increases the age of all the customers by 5 years and adds 3000 to all the salary values
UPDATE CUSTOMERS SET AGE = AGE+5, SALARY = SALARY+3000;

-- Example: But, if we want to modify the ADDRESS and the SALARY columns of selected records in the CUSTOMERS table, 
-- we need to specify a condition to filter the records to be modified, using the WHERE clause

-- Modify all the ADDRESS ('Pune') and the SALARY (1000.00) column values in the CUSTOMERS table for a customer whose NAME is 'Ramesh'.
UPDATE CUSTOMERS
SET ADDRESS = 'Pune', SALARY = 1000.00
WHERE NAME = 'Ramesh';
