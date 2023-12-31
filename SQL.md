## SQL

+ [What is SQL?](#What-is-SQL)
+ [What Can SQL do?](#What-Can-SQL-do)
+ [Semicolon after SQL Statements?](#Semicolon-after-SQL-Statements)
+ [Some of The Most Important SQL Commands](#Some-of-The-Most-Important-SQL-Commands)
+ [SQL Basic Commands](#SQL-Basic-Commands)
+ [What is RDBMS?](#What-is-RDBMS)
+ [What is a table?](#What-is-a-table)
+ [What is a field?](#What-is-a-field)
+ [What is a Record or a Row?](#What-is-a-Record-or-a-Row)
+ [What is a column?](#What-is-a-column)
+ [What is a NULL value?](#What-is-a-NULL-value)
+ [SQL Constraints](#SQL-Constraints)
+ [Database Normalization](#Database-Normalization)
+ [What are SQL datatypes?](#What-are-SQL-datatypes)
+ [Types of Datatypes](#Types-of-Datatypes)
+ [Defining a Datatype](#Defining-a-Datatype)
+ [What is an Operator in SQL?](#What-is-an-Operator-in-SQL)
+ [Expressions](#Expressions)
+ [DROP or DELETE Database](#DROP-or-DELETE-Database)
+ [SELECT Database, USE Statement](#SELECT-Database,-USE-Statement)
+ [Rename Database](#Rename-Database)
+ [ALTER DATABASE…MODIFY Query](#ALTER-DATABASE…MODIFY-Query)
+ [Renaming-database-using-sp_renamedb](#Renaming-database-using-sp_renamedb)
+ [Renaming a System Database](#Renaming-a-System-Database)
+ [Listing databases in SQL server](#Listing-databases-in-SQL-server)
+ [Как устроена HashMap?](#Как-устроена-HashMap)
+ [Backup Database](#Backup-Database)
+ [CREATE Table](#CREATE-Table)
+ [Rename Table](#Rename-Table)
+ [TRUNCATE TABLE Command](#TRUNCATE-TABLE-Command)
+ [TRUNCATE vs DELETE](#TRUNCATE-vs-DELETE)
+ [TRUNCATE vs DROP](#TRUNCATE-vs-DROP)
+ [Clone Tables](#Clone-Tables)
+ [Temporary Tables](#Temporary-Tables)
+ [ALTER TABLE Command](#ALTER-TABLE-Command)
+ [Delete Table](#Delete-Table)
+ [Constraints](#Constraints)
+ [INSERT Query](#INSERT-Query)
+ [SELECT Query](#SELECT-Query)
+ [Select Into](#Select-Into)
+ [Insert Into... Select](# Insert-Into...-Select)
+ [UPDATE Query](#UPDATE-Query)
+ [DELETE Query](#DELETE-Query)
+ [SORTING Results](#SORTING-Results)
+ [CREATE View](#CREATE-View)
+ [UPDATE View](#UPDATE-View)
+ [DROP or DELETE View](#DROP-or-DELETE-View)
+ [Rename View](#Rename-View)

## What is SQL?
SQL is a standard language for accessing and manipulating databases.

+ SQL stands for Structured Query Language
+ SQL lets you access and manipulate databases

SQL is the standard language to communicate with Relational Database Systems. All the Relational Database Management Systems (RDMS) like MySQL, MS Access, Oracle, Postgres and SQL Server use SQL as their Standard Database Language.
There are different versions of the SQL language.
However, they all support at least the major commands (such as SELECT, UPDATE, DELETE, INSERT, WHERE) in a similar manner.

[to content](#SQL?)

## What Can SQL do?
+ SQL can execute queries against a database
+ SQL can retrieve data from a database
+ SQL can insert records in a database
+ SQL can update records in a database
+ SQL can delete records from a database
+ SQL can create new databases
+ SQL can create new tables in a database
+ SQL can create stored procedures in a database
+ SQL can create views in a database
+ SQL can set permissions on tables, procedures, and views
________
+ Allows users to access data in the relational database management systems.
+ Allows users to describe the data.
+ Allows users to define the data in a database and manipulate that data.
+ Allows to embed within other languages using SQL modules, libraries & pre-compilers.
+ Allows users to create and drop databases and tables.
+ Allows users to create view, stored procedure, functions in a database.
+ Allows users to set permissions on tables, procedures and views.

[to content](#SQL)

## Semicolon after SQL Statements?
Some database systems require a semicolon at the end of each SQL statement.

Semicolon is the standard way to separate each SQL statement in database systems.

In this tutorial, we will use semicolon at the end of each SQL statement.

[to content](#SQL)

## Some of The Most Important SQL Commands
+ **SELECT** - extracts data from a database
+ **UPDATE** - updates data in a database
+ **DELETE** - deletes data from a database
+ **INSERT INTO** - inserts new data into a database
+ **CREATE DATABASE** - creates a new database
+ **ALTER DATABASE** - modifies a database
+ **CREATE TABLE** - creates a new table
+ **ALTER TABLE** - modifies a table
+ **DROP TABLE** - deletes a table
+ **CREATE INDEX** - creates an index (search key)
+ **DROP INDEX** - deletes an index

[to content](#SQL)

## SQL Basic Commands
The standard SQL commands to interact with relational databases are CREATE, SELECT, INSERT, UPDATE, DELETE and DROP. These commands can be classified into the following groups based on their nature:

**DDL - Data Definition Language** 
+ **CREATE** - Creates a new table, a view of a table, or other object in the database. 
+ **ALTER** - Modifies an existing database object, such as a table.
+ **DROP** - Deletes an entire table, a view of a table or other objects in the database.

**DML - Data Manipulation Language**
+ **SELECT** - Retrieves certain records from one or more tables. 
+ **INSERT** - Creates a record.
+ **UPDATE** - Modifies records.
+ **DELETE** - Deletes records.

**DCL - Data Control Language**
+ **GRANT** - Gives a privilege to user.
+ **REVOKE** - Takes back privileges granted from user.

[to content](#SQL)

## What is RDBMS?
A database is a structured collection of data. They are used to store and retrieve the data efficiently. Databases can be created using different query languages, and SQL is one such language.

RDBMS stands for Relational Database Management System.

RDBMS is the basis for SQL, and for all modern database systems such as MS SQL Server, IBM DB2, Oracle, MySQL, and Microsoft Access.

The data in RDBMS is stored in database objects called **tables**. A table is a collection of related data entries and it consists of columns and rows.

Every table is broken up into smaller entities called **fields**. A field is a column in a table that is designed to maintain specific information about every record in the table.

A **record**, also called a row, is each individual entry that exists in a table. A record is a horizontal entity in a table.

A **column** is a vertical entity in a table that contains all information associated with a specific field in a table.

If we are creating your database on Linux or Unix, then database names are case-sensitive, even though SQL keywords are case-insensitive. If we are working on Windows then this restriction does not apply.

[to content](#SQL)

## What is a table?
The data in an RDBMS is stored in database objects known as tables. Table is a collection of related data entries and it consists of columns and rows.

[to content](#SQL)

## What is a field?
Field is a column in a table that is designed to maintain specific information about every record in the table.

[to content](#SQL)

## What is a Record or a Row?
Record, also called as a row of data, is each individual entry that exists in a table. 
A record is a horizontal entity in a table.

[to content](#SQL)

## What is a column?
A column is a vertical entity in a table that contains all information associated with a specific field in a table.

For example, our CUSTOMERS table have different columns to represent ID, Name, Age, Salary, City and Country.       

[to content](#SQL)

## What is a NULL value?
A NULL value in a table is a value in a field that appears to be blank, which means a field with a NULL value is a field with no value.

It is very important to understand that a NULL value is different than a zero value or a field that contains spaces. A field with a NULL value is the one that has been left blank during a record creation. 

[to content](#SQL)

## SQL Constraints
Constraints are the rules enforced on data columns on a table. These are used to limit the type of data that can go into a table. This ensures the accuracy and reliability of the data in the database.

Constraints can either be column level or table level. Column level constraints are applied only to one column whereas, table level constraints are applied to the entire table.

Following are some of the most commonly used constraints available in SQL:

**NOT NULL Constraint**
Ensures that a column cannot have a NULL value.

**DEFAULT Constraint**
Provides a default value for a column when none is specified.

**UNIQUE Key**
Ensures that all the values in a column are different.

**PRIMARY Key**
Uniquely identifies each row/record in a database table.

**FOREIGN Key**
Uniquely identifies a row/record in any another database table.

**CHECK Constraint**
Ensures that all values in a column satisfy certain conditions.

**INDEX Constraint**
Used to create and retrieve data from the database very quickly.

[to content](#SQL)

## Database Normalization

Database normalization is the process of efficiently organizing data in a database. There are two reasons of this normalization process:

+ Eliminating redundant data, for example, storing the same data in more than one table.
+ Ensuring data dependencies make sense.

Both these reasons are worthy goals as they reduce the amount of space a database consumes and ensures that data is logically stored. Normalization consists of a series of guidelines that help guide you in creating a good database structure.

Normalization guidelines are divided into normal forms; think of a form as the format or the way a database structure is laid out. The aim of normal forms is to organize the database structure, so that it complies with the rules of first normal form, then second normal form and finally the third normal form.

It is your choice to take it further and go to the Fourth Normal Form, Fifth Normal Form and so on, but in general, the Third Normal Form is more than enough for a normal Database Application.

+ First Normal Form (1NF)
+ Second Normal Form (2NF)
+ Third Normal Form (3NF)

[to content](#SQL)

## What are SQL datatypes?
In general, a datatype is a classification of data which tells the compiler the type of data the programmer store.

[to content](#SQL)

## Types of Datatypes
There are three main types of datatypes in the SQL server. They are listed below:

+ String
+ Numeric
+ Date and Time

Each data type will be discussed later in this chapter.

[to content](#SQL)

## Defining a Datatype
**String data types** 
**char(n)** - It holds the character string with the fixed width.
**varchar(n)** - It holds the character string with the variable width.
**varchar(max)** - It holds the character string with the variable width.
**text** - It holds the character string with the variable width.
**nchar** - It holds the Unicode string with the fixed width.
**nvarchar** - It holds the Unicode string with the variable width.
**ntext** - It holds the Unicode string with the variable width.
**binary(n)** - It holds the binary string with the fixed width.
**varbinary** - It holds the binary string with variable width.
**varbinary(max)** - It holds the binary string of max length of variable width.
**image** - It holds the variable length of the data type that can store binary data.
**Nvarchar(max)** - It holds the Unicode string of max length of variable width.

**Numeric data types**

**bit** - It holds the integer that can be 0, 1 or NULL.
**tinyint** - It allow to holds the whole number from 0 to 255.
**smallint** - It allow to holds the number between -32,768 and 32,767.
**int** - It allow to holds the whole number between -2,147,483,648 and 2,147,483,647.
**bigint** - It allow to holds the whole number between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807
**decimal(p, s)** - It is fixed precision and scale numbers. That allow numbers from -10^38 + 1 to 10^38-1.
The p parameter indicates the maximum total number of digits that can be stored on both sides of the decimal point, left and right. It must have a value from 1 to 38. By default, it is 18.
The s parameter indicates the maximum number of the digit to the right of the decimal point. S must be a value from 0 to p. The value is set to 0 by default.
**numeric(p, s)** - It is fixed precision and scale numbers. That allow numbers from -10^38 + 1 to 10^38-1.
The p parameter indicates the maximum total number of digits that can be stored on both sides of the decimal point, left and right. It must have a value from 1 to 38. By default, it is 18.
The s parameter indicates the maximum number of the digit to the right of the decimal point. S must be a value from 0 to p. The value is set to 0 by default.
**smallmoney** - It holds the monetary data from -214,748.3648 to 214,748.3647.
**Money** - It holds the monetary data from -922,337,203,685,477.5808 to 922,337,203,685,477.5807.
**Float(n)** - It holds or store the floating precession number data from -1.79E + 308 to 1.79E + 308.
The n parameter indicates whether the field should hold 4 or 8 bytes. Float(24) contains a 4-byte field, while Float(53) contains an 8-byte field. The default value of n is 53.
**real** - It holds the floating precision number data from -3.40E + 38 to 3.40E + 38.


**Date and Time Data Types**

**datetime** - It stores date and time both from January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds
**datetime2** - It stores date and time both from January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds.
**smalldatetime** - It stores date and time both from January 1, 1900 to June 6, 2079 with an accuracy of 1 minute.
**date** - It stores date only from January 1, 0001 to December 31 9999
**time** - It store time only to an accuracy of 100 nanoseconds.
**datetimeoffset** - It is the same of the datetime2 with the addition of the time zone offset.
**timestamp** - It stores the unique number that gets updated every time a row gets created or modified. It does not correspond to real time and is based on internal time. Each table may have only one timestamp variable.

[to content](#SQL)

## What is an Operator in SQL?
An operator is a reserved word or a character used primarily in an SQL statement's WHERE clause to perform operation(s), such as comparisons and arithmetic operations.

+ Arithmetic operators (+, -, /, *, %)
+ Comparison operators (=, !=, <>, >, <, >=, <=, !<, !>)
+ Logical operators (ALL, AND, ANY, BETWEEN, EXISTS, IN, LIKE, NOT, NOT, IS NULL, UNIQUE)
+ Operators used to negate conditions

[to content](#SQL)
	
## Expressions
An SQL expression is a combination of one or more values, operators and SQL functions that are all evaluated to a value. 

Expressions are used in WHERE clause of an SQL query. WHERE clause specifies a condition that needs to be satisfied for the purpose of filtering records from a database table. This condition is comprised of either single or multiple expressions. These expressions are further classified into three types:

+ Boolean Expressions
+ Numeric Expressions
+ Date and time Expressions

[to content](#SQL)

## DROP or DELETE Database
The DROP DATABASE statement in SQL is used to delete a database along with all the data such as tables, views, indexes, stored procedures, and constraints.

The Following are the most important points to remember before we are trying to delete the database −

+ It is important to make sure that we have to perform the backup of the database that we are going to delete because once the “DROP DATABASE” statement is executed, all the data and database objects in the database will be permanently deleted and cannot be recovered.
+ It is also important to ensure that no other user or application is currently connected to the database that we want to delete. If we try to delete the database while others users are connected to it, then it can cause data corruption or other issues.

Note − Make sure you have the necessary privilege before deleting any database using the DROP DATABASE statement.

[to content](#SQL)

## SELECT Database, USE Statement
**USE statement** - in SQL is used to specify the name of the database we want to select.
**SELECT** - To retrieve the data from the database, we can use the SELECT statement in SQL, which is used to retrieve data from one or more tables.

[to content](#SQL)
	
## Rename Database
**List the reasons why you might need to rename the db?**
There can be several reasons to rename a database name. One of the reasons could be to avoid naming conflicts or to separate different types of data into different databases. Another reason can be to arrange them in an organized way that can make them more descriptive and easier to identify.

**In what ways can you rename a db?**
+ SQL provides a simple ALTER DATABASE…MODIFY command to rename an existing database.
+ SQL Server also provides a built-in stored procedure called sp_renamedb, which can be used to rename a database name.

**What happens if there are active transactions when renaming the db?**
**Note** − If you have decided to rename a database, make sure there are no active transactions where the old database name is being used, otherwise the complete operation might halt once you rename the database.

[to content](#SQL)
	
## ALTER DATABASE…MODIFY Query
The ALTER DATABASE…MODIFY query in SQL is used to rename the name of an existing user-created database in an SQL Server.

[to content](#SQL)

## Renaming database using sp_renamedb
Another way to rename the existing user-created database in an SQL server is by using the stored procedure.

[to content](#SQL)
	
## Renaming a System Database
While we install the SQL server, some databases are automatically created and those are called “System Databases”.

[to content](#SQL)
	 
## Listing databases in SQL server
There is no particular command in SQL to show or list the databases that exist in an SQL server. So, we use the **SELECT… FROM** command.

[to content](#SQL)
	
## Backup Database
**Why do we need a backup database?**

Nowadays, almost every organization uses a database to store information like employee records, customer records, financial transactions, etc. It is very important to create backups of the database because there might be a chance of data loss due to power surges or disk crashes etc. Overall, regular database backups are essential for ensuring the long-term availability of critical data.

**Backup database statement in SQL**

To create a backup for an existing database, SQL provides us with a simple BACKUP DATABASE command.

**Note** − We should always back up the database onto a different disk other than the actual database. Even if the disk crashes, we will not lose our backup file along with the database.

**Backup Database with SQL DIFFERENTIAL Statement**

The SQL Backup with a DIFFERENTIAL Statement is used to create a differential backup of the database. The differential backup contains only the changes made to the database since the last full backup. This type of backup is usually smaller in size compared to a full backup. Thus, it reduces the time to perform the backup.

[to content](#SQL)
	
## CREATE Table
**Creating a Table from an Existing Table**

Instead of creating a new table every time, one can also copy an existing table and its contents including its structure, into a new table. This can be done using a combination of the CREATE TABLE statement and the SELECT statement. Since its structure is copied, the new table will have the same column definitions as the original table. Furthermore, the new table would be populated using the existing values from the old table.

**Note** − As it is a completely new table, any changes made in it would not be reflected in the original table.

[to content](#SQL)
	
## Show Tables (Listing Tables)
**Listing Tables in SQL Server**

SQL Server does not provide SHOW TABLE command in an SQL Server. Instead, we can use the "SELECT" statement to retrieve information about tables in a database. We have three different commands to use with the SELECT statement to list all the tables in a database −

+ sys.tables
+ schema.tables
+ sysobjects

The databases such as PostgreSQL, DB2 and Oracle use the commands ‘\dt’, ‘db2 list tables for all’ and ‘all_tables’ respectively to list all the tables in the database. Whereas, the database MySQL uses the command ‘Show Table’ to list all the tables present in it.

**Using SQL sys.tables view**
We can use the sys.tables view in SQL to list all the tables in a database. It returns a record of each table in the current database containing its metadata (information) about each table. The metadata includes the name of the table, its unique identifier, the schema it belongs to, and the date and time when it was created, etc.

**Using SQL schema.tables view**
We can also use schema.tables view to retrieve a list of tables in a specific schema. In SQL Server, a schema is a container that holds database objects such as tables, views, and stored procedures.

**Using SQL sysobjects view**
We can use sysobjects view to retrieve the information of all the objects created in the database, including stored procedures, views, system tables and user-defined tables.

[to content](#SQL)
	
##  Rename Table

**Renaming a table using sp_rename**
The sp_rename stored procedure.

**Rules to be followed while Renaming Tables**
+ Avoid renaming system tables
+ Update all references to the table
+ Test thoroughly
+ Use a consistent naming convention
+ Backup the database

[to content](#SQL)
	 
## TRUNCATE TABLE Command
The SQL TRUNCATE TABLE command is used to delete all the records from an existing table by reinitializing the table's structure. This command instructs the database to deallocate the space for all records in a table and change this table's structure by resetting the table size. This is the reason why it is deemed to be a Data Definition Language (DDL) operation rather than Data Manipulation Language (DML), even though all the table data is removed.

Logically, the TRUNCATE TABLE statement performs similarly to the DELETE TABLE statement but without the WHERE clause. However, TRUNCATE is much faster than DELETE and does not allow roll back once committed.

You can also use DROP TABLE command to delete a table but it will remove the complete table structure from the database and you would need to re-create this table once again if you wish you store some data again.

[to content](#SQL)
	
## TRUNCATE vs DELETE
Even though the TRUNCATE and DELETE commands work similar logically, there are some major differences that exist between them. They are detailed in the table below.

| Delete| TRUNCATE |
| ---| --- |
| The DELETE command in SQL removes one or more rows from a table based on the conditions specified in a WHERE Clause| SQL's TRUNCATE command is used to remove all of the rows from a table, regardless of whether or not any conditions are met |
| It is a DML(Data Manipulation Language) command| It is a DDL(Data Definition Language) command |
| There is a need to make a manual COMMIT after making changes to the DELETE command, for the modifications to be committed| When you use the TRUNCATE command, the modifications made to the table are committed automatically |
| It deletes rows one at a time and applies some criteria to each deletion| It removes all of the information in one go |
| The WHERE clause serves as the condition in this case| There is no necessity of using a WHERE Clause | 
| All rows are locked after deletion| TRUNCATE utilizes a table lock, which locks the pages so they cannot be deleted | 
| It makes a record of each and every transaction in the log file| The only activity recorded is the deallocation of the pages on which the data is stored | 
| It consumes a greater amount of transaction space compared to TRUNCATE command| It takes comparatively less amount of transaction space | 
| If there is an identity column, the table identity is not reset to the value it had when the table was created| It returns the table identity to a value it was given as a seed | 
| It requires authorization to delete| It requires table alter permission | 
| When it comes to large databases, it is much slower| It is faster | 

[to content](#SQL)
	
## TRUNCATE vs DROP
Unlike TRUNCATE that resets the table structure, DROP command completely frees the tablespace from the memory. They are both Data Definition Language operations as they interact with the definitions of database objects; which allows the database to automatically commit once these commands are executed with no chance to roll back.

| Drop| TRUNCATE |
| ---| --- |
| The DROP command in SQL removes an entire table from a database including its definition, indexes, constraints, data etc| The TRUNCATE command is used to remove all of the rows from a table, regardless of whether or not any conditions are met and resets the table definition |
| It is a DDL(Data Definition Language) command| It is also a DDL(Data Definition Language) command |
| The table space is completely freed from the memory| The table still exists in the memory |
| All the integrity constraints are removed| The integrity constraints still exist in the table |
| Requires ALTER and CONTROL permissions on the table schema and table respectively, to be able to perform this command| Only requires the ALTER permissions to truncate the table |
| DROP command is much slower than TRUNCATE but faster than DELETE| It is faster than both DROP and DELETE commands |

[к оглавлению](#SQL)
	
## Clone Tables
Cloning operation in SQL allows the user to create the exact copy of an existing table along with its definition, that is completely independent from the original table. Thus, if any changes are made to the cloned table, they will not be reflected in the original table. This operation comes in handy during testing processes, where there is a need to perform sample testing using the existing database tables.

Какие способы/пути клонирования таблиц вы знаете? Чем они отличаются?

There are three types of cloning possible using SQL in various RDBMS; they are listed below:

+ **Simple Cloning** − Creates a new table without copying any constraints or indexes etc.
+ **Shallow Cloning** − Creates a new empty table with the same table structure of an existing table.
+ **Deep Cloning** − Creates a new table and copies the table structure and data of an existing table to the new table.

However, there are still no direct ways to fully clone a table in an SQL server. You have to perform a sequence of steps to clone a table including its definition and data.

**Steps to Clone a Table**
+ Generate the CREATE TABLE script to copy the structure of a table.
+ Using the SELECT... INTO statement to copy the data of a table.

SQL actually provides various methods to clone a table, but not all methods are supported by all RDBMS'.

**Generating a CREATE TABLE Script in SQL Server**

To clone the structure of a table void of any data in it, you can generate a CREATE TABLE script in an SQL Server. In this generated script, you can change the name of the table or any references that you wish to be changed. A new table with exact same definition of the original table will be created. However, the records must be inserted into this table later using an INSERT statement.

**With SELECT...INTO STATEMENT**
The SELECT...INTO statement creates a new table and copies the data from an existing table into it. However, this command only copies the data and not the definition of it, thus, omitting constraints, indexes etc., if any. They need to be added separately if one wishes to have the exact same structure of the original table in their new table.

**Note** − The SELECT...INTO command can copy a table within the same database and across databases as well.

**Cloning a Table in MySQL RDBMS**
+ Use SHOW CREATE TABLE command to get a CREATE TABLE statement that specifies the source table's structure, indexes and all.
+ Modify the statement to change the table name to that of the clone table and execute the statement. This way you will have an exact clone table.
+ Optionally, if you need the table contents copied as well, issue an INSERT INTO or a SELECT statement too.

**Simple Cloning in MySQL**
Simple Cloning operation only copies the data from the existing table and copies them into the new table created. To break this down, a new table is created using the CREATE TABLE statement; and the data from the selected columns of an existing table, as a result of SELECT statement, is copied into the new table.

**Shallow Cloning in MySQL**
Shallow Cloning operation only copies the structure of the existing table into the new table created. This operation excludes the data in the existing table so only an empty new table can be created.

**Deep Cloning in MySQL**
Deep Cloning operation is a combination of simple cloning and shallow cloning. It not only copies the structure of the existing table but also its data into the newly created table. Hence, the new table will have all the attributes of the existing table and also its contents.

[to content](#SQL)
	
## Temporary Tables
they are tables that are created in a database to store data temporarily. They can perform operations that are similar to operations of permanent database tables like Create, Update, Delete, Insert and also other operations like Join. But these tables will be automatically deleted once the current client session is terminated.

**Types of Temporary Tables**
+ Local Temporary Tables
+ Global Temporary Tables

**Local Temporary Tables**

A Local Temporary Table is accessible only in the session that has created it. It is automatically deleted when the connection that has created it gets closed. To create Local Temporary Table, a single “#” is used as the prefix of a table name. To manually drop this temporary table by using the “DROP TABLE #temp-table” query. There will be Random Numbers are appended to the Name of Table Name. If the Temporary Table is created inside the stored procedure, it get dropped automatically upon the completion of stored procedure execution.

**Global Temporary Tables**
Global Temporary Tables are visible to all connections and Dropped when the last connection referencing the table is closed. Global Table Name must have an Unique Table Name. There will be no random Numbers suffixed at the end of the Table Name.
To create a Global Temporary Table, add the “##” symbol before the table name.

[to content](#SQL)
	
## ALTER TABLE Command
is used to modify a table's structure by adding, deleting columns in an existing table. You can also use the ALTER TABLE command to add and drop various constraints on an existing table.

**ALTER TABLE vs UPDATE**
while ALTER TABLE interacts with the structure of a table to modify it, UPDATE only interacts with the data present in the table without disturbing its structure.

[to content](#SQL)
	
## Delete Table
The **SQL DELETE TABLE** command is used to delete the existing records from a table in a database. it does not remove the table structure but only the data contained within it.

[to content](#SQL)
	
## Constraints
Constraints are the rules enforced on the data columns of a table. These are used to limit the type of data that can go into a table.
Constraints could be either on a column level or a table level. 

**NOT NULL Constraint**
Ensures that a column cannot have a NULL value.

**DEFAULT Constraint**
Provides a default value for a column when none is specified.

**UNIQUE Key**
Ensures that all the values in a column are different.

**PRIMARY Key**
Uniquely identifies each row/record in a database table.

**FOREIGN Key**
Uniquely identifies a row/record in any another database table.

**CHECK Constraint**
Ensures that all values in a column satisfy certain conditions.

**INDEX Constraint**
Used to create and retrieve data from the database very quickly.

Constraints can be specified when a table is created with the CREATE TABLE statement or you can use the ALTER TABLE statement to create constraints even after the table is created.

**Dropping Constraints**

Integrity constraints are used to ensure accuracy and consistency of the data in a relational database. Data integrity is handled in a relational database through the concept of referential integrity.

There are many types of integrity constraints that play a role in Referential Integrity (RI). These constraints include Primary Key, Foreign Key, Unique Constraints and other constraints which are mentioned above.

[to content](#SQL)
	
## INSERT Query

The SQL INSERT INTO Statement is used to add new rows of data to a table in the database.

The INSERT statement will only accept the data that follows all the attributes of a column in a table. The data inserted into a table must have same datatypes, satisfy the constraints (if any), etc. If the inserted data does not satisfy any of the attributes, the INSERT INTO statement displays an error.

**Populating one table using another table**
+ Using INSERT... SELECT
+ Using INSERT... TABLE

[to content](#SQL)
	
## SELECT Query
is used to fetch the data.

**Computing using SELECT**
SELECT can also be used to retrieve the results of various mathematical computations. 

**Aliasing a Column in SELECT Statement**
Whenever a column name in a table is too difficult to read and understand, database provides a method to alias this column name into another understandable and relative name. (using AS keyword)

[to content](#SQL)
	
## Select Into
The **SQL SELECT INTO command** creates a new table and inserts data from an existing table into the newly created table. 

SELECT INTO statement does not preserve any indexes, constraints, or other properties of the original table, and the new table will not have any primary keys or foreign keys defined by default. Therefore, you may need to add these properties to the new table manually if necessary.

[to content](#SQL)
	
## Insert Into... Select
INSERT INTO... SELECT statement is used to add/insert one or more new rows (records) from an existing table to another table.
This statement is a combination of two different statements: INSERT INTO and SELECT.

**Inserting the top N rows required**
The TOP clause details the number of rows from the query that should be added to the target table.

[to content](#SQL)
	
## UPDATE Query
The SQL **UPDATE** Query is used to modify the existing records in a table. 

[to content](#SQL)
	
## DELETE Query
The SQL **DELETE** Query is used to delete the existing records from a table.

[to content](#SQL)
  
## SORTING Results	
The SQL ORDER BY clause is used to sort the data in ascending or descending and preferred order. 
**Sorting Results in Ascending Order** - ASC keyword (or just default)
**Sorting Results in Descending Order** - DESC" keyword

**Sorting Results in a Preferred Order**

One can also sort the records of a table in their own preferred order using the CASE statement within the ORDER BY clause. 

All the values are specified in the clause along with the position they are supposed to be sorted in; if the values are not given any number, they are automatically sorted in ascending order.

[to content](#SQL)

## CREATE View
Creating a view is simply creating a virtual table using a query. 

A view is an SQL statement that is stored in the database with an associated name. 

A view can contain rows from an existing table (all or selected). A view can be created from one or many tables which depends on the written SQL query to create a view. Unless indexed, a view does not exist in a database.

Views, which are a type of virtual tables allow users to do the following −
+ Structure data in a way that users or classes of users find natural or intuitive.
+ Restrict access to the data in such a way that a user can see and (sometimes) modify exactly what they need and no more.
+ Summarize data from various tables which can be used to generate reports.

**With Check Option**
The WITH CHECK OPTION is a CREATE VIEW statement option. The purpose of the WITH CHECK OPTION is to ensure that all UPDATE and INSERTs satisfy the condition(s) in the view definition.

If they do not satisfy the condition(s), the UPDATE or INSERT returns an error. The following code block has an example of creating same view CUSTOMERS_VIEW with the WITH CHECK OPTION.

[to content](#SQL)

## UPDATE View
The SQL UPDATE Query is used to modify the existing records in a table or a view. 

**Update View Statement**
A view in a database can be updated under certain conditions which are given below −

+ The SELECT clause may not contain the keyword DISTINCT.
+ The SELECT clause may not contain summary functions.
+ The SELECT clause may not contain set functions.
+ The SELECT clause may not contain set operators.
+ The SELECT clause may not contain an ORDER BY clause.
+ The FROM clause may not contain multiple tables.
+ The WHERE clause may not contain subqueries.
+ The query may not contain GROUP BY or HAVING.
+ Calculated columns may not be updated.
+ All NOT NULL columns from the base table must be included in the view in order for the INSERT query to function.

[to content](#SQL)

## DROP or DELETE View
The SQL DROP View statement is used to delete an existing view, along with its definition and other information. Once the view is dropped, all the permissions for it will also be removed. We can also use this statement to drop indexed views.

Suppose a table is dropped using the DROP TABLE command and it has a view associated to it, this view must also be dropped explicitly using the DROP VIEW command.

**Note** −
+ While trying to perform queries, the database engine checks all the objects referenced in that statement are valid and exist. So, if a view does not exist in the database, the DROP VIEW statement will throw an error.
+ To drop a table in a database, one must require ALTER permission on the said table and CONTROL permissions on the table schema.

**The IF EXISTS clause**
Instead of always checking if the view exists or not in a database before dropping it, you can use the IF EXISTS clause in the DROP VIEW statement.

This clause, when specified in the DROP VIEW query, will automatically check whether the view exists in the current database and then drops it, if yes. If the view does not exist in the database, the query will be ignored.

**Deleting Rows from a View**
Instead of removing an entire view we can also delete selected rows of a view using the DELETE statement.

[to content](#SQL)

## Rename View
There isn't a query in SQL Server that can rename a view directly. But, it does give you access to a stored procedure called **sp_rename** that can rename a view. You have to make sure there are no active transactions being performed on the view using its old name before renaming it.

While you can rename the view, delete the existing view and then re-creating it with a new name is rather recommended.

**Rename View Using sp_rename Stored Procedure**
The **sp_rename** is a system stored procedure that can be used to rename various database objects including tables, columns, indexes, and constraints.

**Rules and Best Practices to be followed while Renaming Views:**
+ Avoid renaming system views 
+ Update all references to the view 
+ Test thoroughly
+ Use a consistent naming convention
+ Backup the database

[to content](#SQL)
