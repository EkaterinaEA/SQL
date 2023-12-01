-- Database: postgres

-- SELECT Query

-- Syntax:
SELECT column1, column2, columnN FROM table_name;
SELECT * FROM table_name;

-- Retrieve Selective Fields:
SELECT ID, NAME, SALARY FROM CUSTOMERS;

-- Retrieve All Fields:
SELECT * FROM CUSTOMERS;

-- Computing using SELECT
SELECT math_computation;

-- Example: multiply two given numbers using SQL statement.
SELECT 56*65;

-- +-------+
-- | 56*65 |
-- +-------+
-- | 3640  |
-- +-------+

-- Aliasing a Column in SELECT Statement
SELECT column_name AS alias_name FROM table_name;

-- In the example below, we are trying to retrieve customer details NAME and AGE in a single column 
-- of the resultant table using the concat() expression and aliasing the column as DETAILS 
-- along with the customer addresses from the CUSTOMERS table.

SELECT CONCAT(NAME,' ',AGE) AS DETAILS, ADDRESS FROM CUSTOMERS ORDER BY NAME;

-- +-----------------+-------------+
-- | DETAILS         | ADDRESS     |
-- +-----------------+-------------+
-- | Chaitali 25     | Mumbai      |                  
-- | Hardik 27       | Bhopal      |                  
-- | kaushik 23      | Kota        |                   
-- | Khilan 25       | Delhi       |                    
-- | Komal 22        | MP          |                      
-- | Muffy 24        | Indore      |                  
-- | Ramesh 32       | Ahmedabad   |               
-- +-----------------+-------------+
