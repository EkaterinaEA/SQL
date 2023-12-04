-- Database: postgres

-- LIKE Operator

-- Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE columnn LIKE specified_pattern;

-- Using the “%” Wildcard character

-- Example: Display all the records from the CUSTOMERS table, where the SALARY starts with 200.
SELECT * FROM CUSTOMERS
WHERE SALARY LIKE '200%';

-- Example: Display all the records from the CUSTOMERS table previously created, with the NAME that has ‘al’ in any position.
SELECT * FROM CUSTOMERS
WHERE NAME LIKE '%al%';

-- Using the “_” wildcard character

-- Example: Display all the records from the CUSTOMERS table previously created, 
-- where the Name starts with K and is at least 4 characters in length
SELECT * FROM CUSTOMERS
WHERE NAME LIKE 'K___%';

-- Example: Display all the records from the CUSTOMERS table, where the Name has ‘m’ in the third position
SELECT * from customers WHERE NAME LIKE '__m%';

-- Using the “[ ]” wildcard character

-- Example: Display all the records from the CUSTOMERS table, where the NAME starts with K and 
-- has the specified characters set [h,i,o,m,l,a,n]
select * from customers 
where NAME LIKE 'k[h,i,o,m,l,a,n]%';

-- Example: Display all the records from the CUSTOMERS table, where the first and last character in the NAME lies anywhere in the range [b-i]
select * from customers 
where NAME LIKE '[b-i]%';

-- Using the “[^]” wildcard character

-- Example: The first character in the NAME column from Customers table is not in the range of [b-k]
select * from customers 
where NAME LIKE '[^b-k]%';

-- Using LIKE operator with OR operator

-- Select the customers whose NAME starts with C and ends with i, or customers whose NAME ends with k
SELECT * FROM CUSTOMERS
WHERE NAME LIKE 'C%i' OR NAME LIKE '%k';

-- Using NOT operator with the LIKE condition

-- Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE column1 NOT LIKE pattern;

-- Example: Fetch all the customers whose NAME does not start with K
select * from customers
WHERE NAME NOT LIKE 'K%';

-- Using Escape characters with LIKE operator

-- Syntax:
SELECT column1, column2, ...
FROM table_name
WHERE column1 LIKE 'pattern’ ESCAPE ‘escape_character';

-- Example: Display all the records from the CUSTOMERS table, where the BONUS_PERCENT contains the % literal.
select * from CUSTOMERS WHERE BONUS_PERCENT LIKE'%!%%' escape '!';

-- Example: Return the BONUS_PERCENT that starts with ‘2’ and contains the ‘%’ literal.
select * from CUSTOMERS
WHERE BONUS_PERCENT LIKE'2%!%%' escape '!';
