-- Database: postgres

-- DELETE Query

--Syntax:
DELETE FROM table_name
WHERE [condition];

-- Delete the record of a customer, whose ID is 6.
DELETE FROM CUSTOMERS
WHERE ID = 6;

-- Delete Multiple Rows

-- Example: From the same Customers table, delete the records of customers who are over 25 years of age.
DELETE FROM CUSTOMERS
WHERE AGE > 25;

-- DELETE all the records:
DELETE FROM CUSTOMERS;
