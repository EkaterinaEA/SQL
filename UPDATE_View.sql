-- Database: postgres

-- UPDATE View

-- Syntax:
UPDATE view_name
SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];

-- Create a table named CUSTOMERS
CREATE TABLE CUSTOMERS(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

-- Create a view based on the above created table 
Create view CUSTOMERS_VIEW AS SELECT * FROM CUSTOMERS;

SELECT * from CUSTOMERS_VIEW;

-- Update the ADDRESS of a customer whose ID is 6 in the CUSTOMERS_VIEW.
UPDATE CUSTOMERS_VIEW SET ADDRESS = 'Pune' WHERE ID = 6;
SELECT * FROM CUSTOMERS;

-- Updating Multiple Rows and Columns

-- Syntax
UPDATE table_name
SET column_name1 = new_value, column_name2 = new_value...
WHERE condition(s);

-- Example: Update the NAME and AGE column values in the CUSTOMERS_VIEW of the record with ID value 3.
UPDATE CUSTOMERS_VIEW
SET NAME = 'Kaushik', AGE = 24
WHERE ID = 3;

SELECT * FROM CUSTOMERS;

-- Example: But if we want to modify/update the age values of all the records in the CUSTOMERS_VIEW, 
-- there is no need to use the WHERE clause.
UPDATE CUSTOMERS_VIEW SET AGE = AGE+6;
