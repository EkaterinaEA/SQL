-- Database: postgres

-- TRUNCATE TABLE Command

-- Syntax:
TRUNCATE TABLE table_name;

-- Create a table CUSTOMERS which can store the personal details of customers 
-- including their name, age, address and salary etc.
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

-- Insert values into this table using the INSERT statement
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

TRUNCATE TABLE CUSTOMERS;
SELECT * FROM CUSTOMERS;
