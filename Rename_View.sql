-- Database: postgres

-- Rename View

-- Rename View Using sp_rename Stored Procedure

-- Syntax
EXEC sp_rename 'old_view_name', 'new_view_name'

-- Example
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

Create view CUSTOMERS_VIEW AS SELECT * FROM CUSTOMERS;

SELECT * from CUSTOMERS_VIEW;

EXEC sp_rename CUSTOMERS_VIEW, VIEW_CUSTOMERS;

SELECT * FROM VIEW_CUSTOMERS;
