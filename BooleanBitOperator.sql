-- Database: postgres

-- BOOLEAN (BIT) Operator

-- Boolean in SQL

-- Syntax:
CREATE TABLE table_name (
   column name BIT, 
   column2 datatype, 
   column 3 datatype …
);

-- Example: Create a table with the name ‘CUSTOMERS’ with three columns namely, ‘ID’, ‘NAME’ and ‘AVAILABLITY’.
-- The ‘AVAILABILITY’ column represents whether the customer is available or not. 
-- It stores the bit value 0 (FALSE) if the customer is not available and 1 (TRUE) if the customer is available.
CREATE TABLE CUSTOMERS(
   ID INT NOT NULL,
   NAME VARCHAR(150),
   AVAILABILITY BIT
); 

-- Inserting data with SQL BIT data type

-- Example: Insert data in the CUSTOMERS table created above
INSERT INTO CUSTOMERS(ID, NAME, AVAILABILITY) VALUES (1, 'Ramesh', 0);
INSERT INTO CUSTOMERS(ID, NAME, AVAILABILITY) VALUES (2, 'Khilan', 1);
INSERT INTO CUSTOMERS(ID, NAME, AVAILABILITY) VALUES (4, 'Kaushik', NULL);

-- Replacing BIT 0,1 with TRUE and FALSE

-- Syntax: basic syntax of CASE statement
CASE
   WHEN condition1 THEN value1
   WHEN condition2 THEN value2
   ...
   ELSE default_value
END

-- Example
CREATE TABLE CARS (
   MANUFACTURER VARCHAR(20) NOT NULL,
   TYPE VARCHAR(20) NOT NULL,
   TRANSMISSION VARCHAR(20) NOT NULL,
   COLOR VARCHAR(20),
   IS_RED BIT
);

INSERT INTO CARS VALUES ('Toyota', 'SUV', 'Automatic', 'Red', 1);
INSERT INTO CARS VALUES ('Honda', 'Hatchback', 'Manual', 'Grey', 0);
INSERT INTO CARS VALUES ('Mercedes', 'Sedan', 'Automatic', 'Red', 1);
INSERT INTO CARS VALUES ('Tata', 'Truck', 'Manual', 'Blue', 0);
INSERT INTO CARS VALUES ('Ford', 'Minivan', 'Manual', 'Red', 1);

-- +--------------+-----------+--------------+-------+--------+
-- | MANUFACTURER | TYPE      | TRANSMISSION | COLOR | IS_RED |
-- +--------------+-----------+--------------+-------+--------+
-- | Toyota       | SUV       | Automatic    | Red   | 1      |
-- | Honda        | Hatchback | Manual       | Grey  | 0      |
-- | Mercedes     | Sedan     | Automatic    | Red   | 1      |
-- | Tata         | Truck     | Manual       | Blue  | 0      |
-- | Ford         | Minivan   | Manual       | Red   | 1      |
-- +--------------+-----------+--------------+-------+--------+

SELECT *,
   CASE IS_RED
      WHEN 1 THEN 'TRUE'
      WHEN 0 THEN 'FALSE'
   END AS IS_RED_BOOLEAN
FROM CARS;

-- Output
-- +--------------+-----------+--------------+-------+--------+----------------+
-- | MANUFACTURER | TYPE      | TRANSMISSION | COLOR | IS_RED | IS_RED_BOOLEAN |
-- +--------------+-----------+--------------+-------+--------+----------------+
-- | Toyota       | SUV       | Automatic    | Red   | 1      | TRUE           |
-- | Honda        | Hatchback | Manual       | Grey  | 0      | FALSE          |
-- | Mercedes     | Sedan     | Automatic    | Red   | 1      | TRUE           |
-- | Tata         | Truck     | Manual       | Blue  | 0      | FALSE          |
-- | Ford         | Minivan   | Manual       | Red   | 1      | TRUE           |
-- +--------------+-----------+--------------+-------+--------+----------------+ 

-- BIT with stored procedures

-- Syntax:
CREATE PROCEDURE my_Procedure
   @myBit BIT
AS
BEGIN
   IF @myBit = 1
   BEGIN
      -- do something if @myBit is true
   END
   ELSE
   BEGIN
      -- do something if @myBit is false
   END
END;

-- Here, the stored procedure takes a parameter called @myBit of type BIT. 
-- It then verifies the value of @myBit using an IF statement and performs different actions depending 
-- on whether it's true or false.

-- Example: Create a stored procedure named REDFlag with one parameter called REDFlag bit type. 
-- This procedure will print all records from the Cars table with the same IS_RED field as an input parameter.

create procedure REDFlag
(
   @REDFlag bit
)
as
select * from CARS
where IS_RED = @REDFlag;

exec REDFlag 1;

-- +--------------+-----------+--------------+-------+--------+
-- | MANUFACTURER | TYPE      | TRANSMISSION | COLOR | IS_RED |
-- +--------------+-----------+--------------+-------+--------+
-- | Toyota       | SUV       | Automatic    | Red   | 1      |
-- | Mercedes     | Sedan     | Automatic    | Red   | 1      |
-- | Ford         | Minivan   | Manual       | Red   | 1      |
-- +--------------+-----------+--------------+-------+--------+

exec REDFlag 0;
