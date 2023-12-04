-- Database: postgres

-- Having Clause

-- Syntax:
SELECT column1, column2, aggregate_function(column)
FROM table_name
GROUP BY column1, column2
HAVING condition;

-- HAVING clause with ORDER BY clause

-- Example: Group the records of the CUSTOMERS table based on the columns AGE and ADDRESS, 
-- filters the groups where the SALARY value is less than 5000 and, 
-- arranges the remaining groups in descending order based on the total salaries of each group.
SELECT ADDRESS, AGE, SUM(SALARY) AS TOTAL_SALARY 
FROM CUSTOMERS 
GROUP BY ADDRESS, AGE 
HAVING TOTAL_SALARY < 5000 
ORDER BY TOTAL_SALARY DESC;

-- HAVING clause with COUNT() function

-- Example: Group the records of the CUSTOMERS table based on the AGE column and, 
-- retrieves the details of the group that has more than two entities 
SELECT AGE, COUNT(AGE) 
FROM CUSTOMERS 
GROUP BY AGE 
HAVING COUNT(age) > 2;

-- HAVING clause with AVG() function

-- Example: Retrieve the city of the customers whose average salary is greater than 5240
SELECT ADDRESS, AVG(SALARY) as AVG_SALARY FROM CUSTOMERS GROUP BY ADDRESS HAVING AVG(SALARY) > 5240;

-- HAVING clause with MAX() function

-- Example: Retrieve the city of the customers whose maximum salary is greater than 5240
SELECT ADDRESS, MAX(SALARY) as MAX_SALARY FROM CUSTOMERS GROUP BY ADDRESS HAVING MAX(SALARY) > 5240;
