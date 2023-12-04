-- Database: postgres

-- NOT EQUAL

-- Syntax
WHERE expression1 <> expression2

-- NOT EQUAL with text

-- Example: Pick out every customer at the table whose name isn't Ramesh. 
-- The not equal operator is applicable to both text and numeric data. 
-- Execute the below query to get all the customer details except for one whose name is not Ramesh.
SELECT * FROM Customers WHERE NAME <> 'Ramesh';

-- NOT EQUAL with GROUP BY clause

-- Example: Group by clause along with the not-equal operator to count and display the number of customers at each age except the age "22”. 
SELECT COUNT(id), AGE 
FROM Customers
WHERE AGE <> '22' 
GROUP BY AGE;

-- NOT EQUAL with multiple conditions

-- Example: Combine two conditions in the query, and we are going to select all the customers on the table 
-- whose salary is either ">2000" or "=2000". The customer must not be from "Bhopal". 
SQL> SELECT * FROM Customers 
WHERE ADDRESS <> 'Bhopal' AND (SALARY>'2000' OR SALARY='2000');
