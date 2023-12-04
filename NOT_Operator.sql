-- Database: postgres

-- NOT Operator

-- Syntax:
NOT [CONDITION or BOOLEAN EXPRESSION]

-- Example:
SELECT * FROM CUSTOMERS
WHERE NOT (SALARY > 2000.00);

-- NOT Operator with LIKE

-- Example:
SELECT * FROM CUSTOMERS
WHERE NAME NOT LIKE 'K%';

-- NOT Operator with IN

-- Example:
SELECT * FROM CUSTOMERS
WHERE AGE NOT IN (25, 26, 32);

-- NOT Operator with IS NULL

-- Example:
SELECT * FROM CUSTOMERS
WHERE AGE IS NOT NULL;

-- NOT Operator with BETWEEN

-- Example: With the given query below, let us try to display records in the Customers table 
-- whose salary does not fall between 1500.00 and 2500.00
SELECT * FROM CUSTOMERS
WHERE SALARY NOT BETWEEN 1500.00 AND 2500.00;

-- NOT Operator with EXISTS

-- Example: Print the IDs of customers in CUSTOMERS table that do not exist in the ORDERS table
SELECT CUSTOMER_ID FROM CUSTOMERS
WHERE NOT EXISTS (SELECT CUSTOMER_ID FROM ORDERS WHERE ORDERS.CUSTOMER_ID = CUSTOMERS.ID);
