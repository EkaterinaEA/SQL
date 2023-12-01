-- Database: postgres

-- Defining a Datatype
CREATE TABLE table_name(column1 datatype, column2 datatype…)

CREATE TABLE Customers (Name VARCHAR (25), Age INT)

-- Create a table “students” with only string data types values: name varchar, gender char, city text.
CREATE TABLE students (
   name varchar(20) NOT NULL,
   gender char(6) NOT NULL,
   city text NOT NULL
);

-- Create a table named employees with only numeric data type values.
CREATE TABLE employees (
   ID int NOT NULL,
   myBoolean bit NOT NULL,
   Fee money,
   celsius float NOT NULL
);
