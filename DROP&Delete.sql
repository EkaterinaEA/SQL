-- Database: postgres

-- DROP Table

-- Syntax:
DROP TABLE table_name;

-- Example:
DROP TABLE CUSTOMERS;

-- The IF EXISTS clause

-- Syntax:
DROP TABLE [IF EXISTS] table_name;

-- Example:
DROP TABLE IF EXISTS demo;


-- Delete Table

-- Syntax:
DELETE FROM table_name;

-- Deleting specific rows based on single condition
DELETE FROM table_name
WHERE condition;

-- Example:
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

select * from Customers;

-- Delete all the customers with the name ‘Hardik’:
DELETE FROM CUSTOMERS WHERE NAME='Hardik';

SELECT * FROM Customers;

-- Deleting specific rows based on multiple conditions
DELETE FROM table_name
WHERE condition1 AND condition2 AND ... conditionN;

-- Delete all the customers whose name is either ‘Komal’ or their address is ‘Mumbai’
DELETE FROM CUSTOMERS WHERE NAME='Komal' OR ADDRESS='Mumbai';

-- Deleting all the records in a table
DELETE FROM CUSTOMERS;


















