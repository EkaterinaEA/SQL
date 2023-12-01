-- Database: postgres

-- SELECT Database, USE Statement

-- Syntax
USE DatabaseName;

-- Example. Create a database
CREATE DATABASE testDB;

-- List all the available databases
SELECT * FROM SYS.DATABASES;

-- Select/switch the current database to testDB
USE testDB;

-- Create a table, and inserting data
CREATE TABLE CALENDAR(MONTHS DATE NOT NULL);

-- Insert some records in the CALENDAR table using SQL INSERT statements
INSERT INTO CALENDAR(MONTHS) VALUES('2023-01-01');

-- Verify the operation by listing all the records from CALENDAR table
SELECT * FROM CALENDAR;




























