-- Database: postgres

-- INSERT Query

-- INSERT INTO statement
INSERT INTO TABLE_NAME (column1, column2, column3,...columnN)  
VALUES (value1, value2, value3,...valueN);

-- INSERT Query
INSERT INTO TABLE_NAME VALUES (value1,value2,value3,...valueN);

-- Example: INSERT INTO statements will create three records in the empty CUSTOMERS table
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

-- Insert multiple rows
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 ), (5, 'Hardik', 27, 'Bhopal', 8500.00 ), (6, 'Komal', 22, 'MP', 4500.00 );

-- Create a record in the CUSTOMERS table
INSERT INTO CUSTOMERS 
VALUES (7, 'Muffy', 24, 'Indore', 10000.00 );

-- Populating one table using another table

-- INSERT... SET Statement:
INSERT INTO first_table_name [(column1, column2, ... columnN)] 
   SELECT column1, column2, ...columnN 
   FROM second_table_name
   [WHERE condition];

-- Example:
INSERT INTO testCUSTOMERS (ID, NAME, AGE, ADDRESS, SALARY) SELECT * FROM CUSTOMERS;

-- INSERT... TABLE Statement:
INSERT INTO table1 TABLE table2;

-- Example:
INSERT INTO Customers TABLE testCUSTOMERS1;



