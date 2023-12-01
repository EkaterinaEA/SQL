-- Database: postgres

-- Listing databases

-- Syntax:
-- SELECT column_name, column_name1,…… FROM sys.databses;

SELECT * FROM sys.databases;

-- Create multiple databases into database system
CREATE DATABASE testDB1;
CREATE DATABASE testDB2;
CREATE DATABASE testDB3;

-- Verify whether the databases are created or not
SELECT * FROM sys.databases;
SHOW DATABASES;

-- Stored procedure to show all the Databases
EXEC sp_databases;

-- Showing selected information about the databases
SELECT name, compatibility_level FROM sys.databases;


