-- Database: postgres

-- Clone Tables

-- SELECT...INTO STATEMENT
SELECT * INTO new_table FROM original_table;

SELECT * INTO testCUSTOMERS FROM CUSTOMERS;
SELECT * FROM testCUSTOMERS;

-- Simple Cloning
CREATE TABLE new_table SELECT * FROM original_table;

CREATE TABLE testCUSTOMERS SELECT * FROM CUSTOMERS;
SELECT * FROM testCUSTOMERS;

-- Shallow Cloning
CREATE TABLE new_table LIKE original_table;

CREATE TABLE testCUSTOMERS1 LIKE CUSTOMERS;
SELECT * FROM testCUSTOMERS1;

-- Deep Cloning
CREATE TABLE new_table LIKE original_table;
INSERT INTO new_table SELECT * FROM original_table;

CREATE TABLE testCUSTOMERS2 LIKE CUSTOMERS;
INSERT INTO testCUSTOMERS2 SELECT * FROM CUSTOMERS;
SELECT * FROM testCUSTOMERS2;
