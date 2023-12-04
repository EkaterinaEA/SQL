-- Database: postgres

-- Insert Into... Select

-- Syntax:
INSERT INTO table2
SELECT * FROM table1

-- Example: Create a table named Agent which contains the personal details of customers including their name, age, gender, etc.
CREATE TABLE Agent  
(  
   id INT NOT NULL,  
   name VARCHAR(50) NOT NULL,  
   gender VARCHAR(20) NOT NULL,  
   age INT NOT NULL,
   PRIMARY KEY(ID)
 );  

-- Insert values into this table
INSERT INTO Agent  
VALUES (1,'Msd', 'Male', 21),   
(2,'Virat', 'Male', 23),   
(3,'Perry', 'Female', 24),   
(4,'Smiti', 'Female', 18),   
(5,'Rose', 'Female', 23),   
(6,'Jack', 'Male', 22);

-- Verify the contents of the Agent table using the SELECT statement
SELECT * FROM Agent;

-- Create another table named Agentdemo with same structure as the Agent table.
CREATE TABLE Agentdemo  
(  
   id INT NOT NULL,  
   name VARCHAR(50) NOT NULL,  
   gender VARCHAR(20) NOT NULL,  
   age INT NOT NULL,
	PRIMARY KEY(ID)
 ); 

-- Inserte required data from one table to another table
INSERT INTO Agentdemo(id,name, gender, age)  
SELECT id,name, gender, age FROM Agent  
WHERE gender = 'male';

SELECT * FROM Agentdemo;

-- Inserting the top N rows required
TRUNCATE TABLE Agentdemo; 

-- Insert the top 3 agents sorted by their age
INSERT TOP (3) INTO Agentdemo(id,name, gender, age)  
SELECT id,name, gender, age FROM Agent  
ORDER BY age;

SELECT * FROM Agentdemo;
-- +----+-------+--------+-----+
-- | id | name  | gender | age |
-- +----+-------+--------+-----+
-- |  1 | Msd   | Male   |  21 |
-- |  2 | Virat | Male   |  23 |
-- |  3 | Perry | Female |  24 |
-- +----+-------+--------+-----+
