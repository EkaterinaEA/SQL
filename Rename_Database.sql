-- Database: postgres

-- Rename Database

-- ALTER DATABASE… MODIFY Query
ALTER DATABASE existing_database_name MODIFY NAME = new_database_name;

-- Example
SELECT name From sys.databases
CREATE DATABASE testDB;

-- Rename the database testDB to tutorialsDB:
ALTER DATABASE testDB MODIFY NAME = tutorialsDB;

SELECT name From sys.databases;

-- Renaming database using sp_renamedb

--Syntax:
--EXEC sp_renamedb 'existing_database_name', 'new_database_name' 

-- Rename the database testDB to tutorialsDB
Exec sp_renamedb 'tutorialsDB', 'testDB';
SELECT name From sys.databases;

