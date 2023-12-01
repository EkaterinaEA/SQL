-- Database: postgres

-- Backup Database

-- Syntax:
-- BACKUP DATABASE database_name
-- TO DISK = 'filepath';

-- Example: Create a backup file for the database testDB on D drive
CREATE DATABASE testDB;
SELECT name
FROM sys.databases;

BACKUP DATABASE testDB 
TO DISK = 'D:\DB_backup.bak'

-- Backup Database with SQL DIFFERENTIAL Statement
BACKUP DATABASE database_name
TO DISK = 'filepath'
WITH DIFFERENTIAL;

-- Example
BACKUP DATABASE testDB
TO DISK = 'D:\DB_backup.bak'
WITH DIFFERENTIAL;
