-- Database: postgres

-- EXISTS Operator

-- Syntax:
WHERE EXISTS (subquery);

-- Using EXISTS operator with SELECT statement

-- Example: Return the lists of the customers with the price of the car greater than 2,000,000
SELECT * FROM CUSTOMERS WHERE EXISTS (SELECT PRICE FROM CARS WHERE CARS.ID = CUSTOMERS.ID AND PRICE > 2000000);

-- Using EXISTS operator with UPDATE statement

-- Example: Modify the name ‘Kushal’ of all the customers whose id is equal to the id of the cars table
UPDATE CUSTOMERS
SET NAME = 'Kushal' 
WHERE EXISTS (SELECT NAME FROM CARS WHERE CUSTOMERS.ID = CARS.ID);

-- Using EXISTS operator with DELETE statement

-- Delete the row in the CUSTOMERS table whose id is equal to the id of the CARS table having price equal to ‘2250000’
DELETE FROM customers
WHERE EXISTS (SELECT * FROM cars WHERE cars.id = customers.id AND cars.price = 2250000);

-- Using NOT operator with EXISTS operator
WHERE NOT EXISTS (subquery);

-- Give the names of the customers who have not bought any car
Select * from CUSTOMERS 
WHERE NOT EXISTS (SELECT * FROM CARS WHERE CUSTOMERS.ID = CARS.ID);

