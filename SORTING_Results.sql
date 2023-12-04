-- Database: postgres

-- SORTING Results

--Syntax:
SELECT column-list 
FROM table_name 
[WHERE condition] 
[ORDER BY column1, column2, .. columnN] [ASC | DESC];

-- Sorting Results in Ascending Order - ASC keyword (or just default)

-- Sort the result in an ascending order by NAME and SALARY.
SELECT * FROM CUSTOMERS
ORDER BY NAME, SALARY;

-- Sorting Results in Descending Order - DESC keyword

-- Sort the records of the CUSTOMERS tables in descending order based on the column NAME.
SELECT * FROM CUSTOMERS
ORDER BY NAME DESC;

-- Sorting Results in a Preferred Order

-- Fetch the rows with their own preferred order
SELECT * FROM CUSTOMERS
   ORDER BY (CASE ADDRESS
   WHEN 'DELHI' 	 THEN 1
   WHEN 'BHOPAL' 	 THEN 2
   WHEN 'KOTA' 	 THEN 3
   WHEN 'AHMEDABAD' THEN 4
   WHEN 'MP' 	THEN 5
   ELSE 100 END) ASC, ADDRESS DESC;
