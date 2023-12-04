-- Database: postgres

-- CREATE View

-- Syntax
CREATE VIEW view_name AS
SELECT column1, column2.....
FROM table_name
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
Create view first_view AS SELECT * FROM customers;

-- Verify the contents of a view
SELECT * from first_view;

-- +----+----------+-----+-----------+----------+
-- | ID | NAME     | AGE | ADDRESS   | SALARY   |
-- +----+----------+-----+-----------+----------+
-- |  1 | Ramesh   |  32 | Ahmedabad |  2000.00 |
-- |  2 | Khilan   |  25 | Delhi     |  1500.00 |
-- |  3 | kaushik  |  23 | Kota      |  2000.00 |
-- |  4 | Chaitali |  25 | Mumbai    |  6500.00 |
-- |  5 | Hardik   |  27 | Bhopal    |  8500.00 |
-- |  6 | Komal    |  22 | MP        |  4500.00 |
-- |  7 | Muffy    |  24 | Indore    | 10000.00 |
-- +----+----------+-----+-----------+----------+

-- With Check Option

-- Create the view named CUSTOMERS_VIEW with the WITH CHECK OPTION clause
CREATE VIEW CUSTOMERS_VIEW AS
SELECT name, age
FROM  CUSTOMERS
WHERE age IS NOT NULL
WITH CHECK OPTION;

-- Using the WHERE clause
CREATE VIEW test_view as SELECT * FROM customers where SALARY>3000;

SELECT * FROM test_view;
