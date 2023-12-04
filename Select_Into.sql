-- Database: postgres

-- Select Into

-- SELECT INTO - Copying Data From All Columns

-- Syntax
SELECT *
INTO new_table_name
FROM existing_table_name

-- Example: Create the CUSTOMERS table which contains the personal details of customers 
-- including their name, age, address and salary etc.

CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

-- Create a new table called CUSTOMER_BACKUP and copies the data from the CUSTOMERS table into it
SELECT *
INTO CUSTOMER_BACKUP
FROM CUSTOMERS;

-- Verify whether the changes are reflected in a table by retrieving its contents using the SELECT statement. 
SELECT * from CUSTOMER_BACKUP;

-- SELECT INTO - Copying Data From Specific Columns

-- Syntax
SELECT column1, column2, ..., columnN
INTO new_table_name
FROM existing_table_name;

-- Example: Create a new table called CUSTOMER_DETAILS with only the NAME, AGE, and ADDRESS columns from the CUSTOMERS table, 
-- and populate it with the corresponding data.
SELECT name, age, address
INTO CUSTOMER_DETAILS
FROM CUSTOMERS;

-- Verify whether the changes are reflected in a table by retrieving its contents using the SELECT statement. 
SELECT * from CUSTOMER_DETAILS;

-- SELECT INTO - Copying Data From Multiple Tables

-- Syntax
SELECT column1, column2, ..., columnN
INTO new_table_name
FROM table1
JOIN table2 ON table1.column = table2.column

-- Example: Create another table named ORDERS 
CREATE TABLE ORDERS (
   OID INT NOT NULL,
   DATE VARCHAR (20) NOT NULL,
   CUSTOMER_ID INT NOT NULL,
   AMOUNT DECIMAL (18, 2),
);

INSERT INTO ORDERS (OID, DATE, CUSTOMER_ID, AMOUNT)
VALUES (102, '2009-10-08 00:00:00', 3, 3000.00);

-- +-----+---------------------+-------------+---------+
-- | OID | DATE                | CUSTOMER_ID | AMOUNT  |
-- +-----+---------------------+-------------+---------+
-- | 102 | 2009-10-08 00:00:00 |           3 | 3000.00 |
-- | 100 | 2009-10-08 00:00:00 |           3 | 1500.00 |
-- | 101 | 2009-11-20 00:00:00 |           2 | 1560.00 |
-- | 103 | 2008-05-20 00:00:00 |           4 | 2060.00 |
-- +-----+---------------------+-------------+---------+


-- Create a new table called CUSTOMER_ORDERS that includes the customer name from the CUSTOMERS table 
-- and the customer id from the ORDERS table, where the id of customers from the CUSTOMERS table matches with the id of customers from the ORDERS table
SELECT CUSTOMERS.Name, ORDERS.customer_id
INTO CUSTOMERS_ORDER
FROM CUSTOMERS
LEFT JOIN ORDERS ON CUSTOMERS.ID = ORDERS.customer_id;

-- Verify whether the changes are reflected in a table by retrieving its contents using the SELECT statement.
SELECT * FROM CUSTOMERS_ORDER;

-- SELECT INTO with WHERE clause

-- Syntax
SELECT *
INTO new_table_name
FROM existing_table_name
WHERE condition;

-- Example: Create a new table called NameStartsWith_K that includes all columns from the CUSTOMERS table, 
-- but it only stores the records of the customers whose name starts with ‘k’.
SELECT *
INTO NameStartsWith_K
FROM CUSTOMERS
WHERE NAME LIKE 'k%';

We can verify whether the changes are reflected in a table by retrieving its contents using the SELECT statement.

SELECT * from NameStartsWith_K;

