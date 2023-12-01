-- Database: postgres

-- Rename Table

-- Renaming a table using sp_rename
EXEC sp_rename 'old_table_name', 'new_table_name'

-- Create a table with the name CUSTOMERS which contains the personal details of customers
-- including their name, age, address and salary etc.
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

-- Insert few records into this table using the INSERT statement
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

EXEC sp_rename 'Customers', 'Workers';
SELECT * FROM Workers;

