-- Database: postgres

-- Syntax
DROP DATABASE DatabaseName;

-- Delete the testDB1 database using the SQL DROP DATABASE statement
CREATE DATABASE testDB1;
CREATE DATABASE testDB2;
CREATE DATABASE testDB3;
CREATE DATABASE testDB4;
SELECT * FROM SYS.DATABASES;
DROP DATABASE testDB1;

-- Once we have deleted the testDB1 database, we can verify whether it is deleted or not using the SQL SHOW DATABASES statement
SELECT * FROM sys.databases;
SHOW DATABASES;

-- Delete a database that doesn't exist in the database system
DROP DATABASE testDB1; -- Cannot drop the database 'testDB1', because it does not exist or you do not have permission.

-- DROP DATABASE IF EXISTS Statement

-- Syntax
DROP DATABASE IF EXISTS DatabaseName;

-- Delete an existing database testDB2 in the database system using the following SQL statement
DROP DATABASE IF EXISTS testDB2;
SELECT * FROM SYS.DATABASES;

-- Dropping the database that doesn't exist
DROP DATABASE IF EXISTS testDB2; -- When we execute the program above, the output is obtained as follows: Commands completed successfully.

-- Deleting multiple databases

-- We can drop multiple databases using the DROP DATABASE statement as follows:
DROP DATABASE testDB3, testDB4;
SELECT * FROM sys.databases;






















