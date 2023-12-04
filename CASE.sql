-- Database: postgres

-- CASE

-- Syntax:
CASE
   WHEN condition1 THEN statement1,
   WHEN condition2 THEN statement2,
   WHEN condition THEN statementN
   ELSE result
END;

-- Example: Print Name and Age from Customers table. If the age of the customer is greater than 30, 
-- it returns Gen X otherwise moves to the further WHEN and THEN conditions. 
-- If the age of the customer is greater than 25, it returns Gen Y. If the age of the customer is greater than 22, it returns Gen Z. 
-- If none of the conditions is matched with the CUSTOMERS table, CASE returns the 'Gen Alpha’ value 
-- as mentioned in the ELSE part in the query as shown below. As Generation field.
SELECT NAME, AGE,
CASE 
   WHEN AGE > 30 THEN 'Gen X'
   WHEN AGE > 25 THEN 'Gen Y'
   WHEN AGE > 22 THEN 'Gen Z'
ELSE 'Gen Alpha' 
END AS Generation
FROM CUSTOMERS;

-- Example: Take a look at another query where we want to provide a 25% increment to each customer 
-- if the amount is less than 4500 from the CUSTOMERS table previously created
SELECT *,
CASE WHEN SALARY < 4500 THEN (SALARY + SALARY * 25/100)
END AS INCREMENT
FROM CUSTOMERS;

-- CASE statement with ORDER BY clause

-- Example: Sort the results based on either the ‘NAME’ column or the ‘ADDRESS’ column, depending on the value of the ‘NAME’ column. 
-- If the ‘NAME’ column starts with 'K', the results are sorted by the ‘NAME’ column; 
-- otherwise, the results are sorted by the ‘ADDRESS’ column
SELECT * FROM CUSTOMERS
ORDER BY
(CASE
    WHEN NAME LIKE 'k%' THEN NAME
    ELSE ADDRESS
END);

-- CASE statement with GROUP BY clause

-- Example: If the value in ‘SALARY is less than or equal to 4000, the data will be grouped as ‘Lowest paid’. 
-- If the value is greater than 4000 and less than or equal to 6500, it will be grouped as ‘Average paid’. 
-- All other values will be grouped as ‘Highest paid’. The SUM function is used to calculate the total of the SALARY for each group
SELECT 
   CASE 
      WHEN SALARY <= 4000 THEN 'Lowest paid'
      WHEN SALARY > 4000 AND SALARY <= 6500 THEN 'Average paid'
   ELSE 'Highest paid' 
      END AS SALARY_STATUS,
   SUM(SALARY) AS Total
   FROM CUSTOMERS
   GROUP BY 
   CASE 
      WHEN SALARY <= 4000 THEN 'Lowest paid'
      WHEN SALARY > 4000 AND SALARY <= 6500 THEN 'Average paid'
   ELSE 'Highest paid'
END;

-- CASE statement with WHERE clause

-- Example: Return the different designations of the customers based on their age. 
-- The WHERE clause is used to filter the rows based on the salary of the customers. 
SELECT NAME, ADDRESS, 
   CASE 
      WHEN AGE < 25 THEN 'Intern'
      WHEN AGE >= 25 and AGE <= 27 THEN 'Associate Engineer'
      ELSE 'Senior Developer'
   END as Designation
FROM CUSTOMERS
WHERE SALARY >= 2000;

-- CASE statement with UPDATE statement

-- Example: If the age of the customer is equal to ’25’, their salary will be updated to ‘17000’. 
-- If the age is equal to ‘32’, it will be updated to ‘25000’. For the customers with other ages, salaries will be updated to ‘12000’
UPDATE CUSTOMERS
SET SALARY= 
CASE AGE
WHEN 25 THEN 17000
WHEN 32 THEN 25000
ELSE 12000
END;

-- CASE statement with INSERT statement

Declare @AGE INT
Set @AGE = 28
INSERT INTO CUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY)
VALUES (10, 'Viren', 28, 'Varanasi', 
CASE 
   WHEN @AGE >= 25 THEN 23000
   ELSE 14000
END);
