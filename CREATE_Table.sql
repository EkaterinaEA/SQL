-- Database: postgres

-- CREATE Table

-- Syntax:
CREATE TABLE table_name(
   column1 datatype,
   column2 datatype,
   column3 datatype,
   .....
   columnN datatype,
   PRIMARY KEY( one or more columns )
);

-- Create a CUSTOMERS table with an ID as a primary key and NOT NULL are the constraints showing 
-- that these fields cannot be NULL while creating records in this table
CREATE TABLE CUSTOMERS(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),       
   PRIMARY KEY (ID)
);

-- Verification:
EXEC sp_help CUSTOMERS;

-- Creating a Table from an Existing Table
CREATE TABLE NEW_TABLE_NAME AS
SELECT [column1, column2...columnN]
FROM EXISTING_TABLE_NAME
[WHERE CONDITION];

-- Create a table SALARY using the CUSTOMERS table and having the fields customer ID and customer SALARY
CREATE TABLE SALARY AS
SELECT ID, SALARY
FROM CUSTOMERS;
