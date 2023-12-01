-- Database: postgres

-- Show Tables (Listing Tables)

-- Using SQL sys.tables view
SELECT * FROM sys.tables;

-- Using SQL schema.tables view
SELECT * FROM schema_name.tables;

-- List down all the tables in SQL using the INFORMATION_SCHEMA.TABLES view
SELECT table_name, table_type
FROM information_schema.tables;

-- Example:
SELECT table_name, table_schema
FROM information_schema.tables
WHERE table_type = 'BASE TABLE';

-- Using SQL sysobjects view
SELECT * FROM sysobjects;

-- We can use SYSOBJECTS view to retrieve the information of all the objects created in SQL Server database, 
-- including stored procedures, views, system tables and user-defined tables
SELECT name, id, xtype
FROM sysobjects
WHERE xtype = 'U';
