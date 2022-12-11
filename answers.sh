
# ------------   Basic Queries  ----------------------------


# Problem 1. Get all the names of students in the database

SELECT Name FROM students

# problem 2.Get all the data of students above 30 years old

SELECT * FROM students
WHERE Age  > 30 

# problem 3. Get the names of the females who are 30 years old

SELECT * from students
WHERE age >= 30  AND Gender = "F";

#problem 4. Get the number of Points of **Alex**
SELECT   Name , Points from students 
WHERE Name = "Alex";


#problem 5. Add yourself as a new student \(your name, your age...\)

INSERT INTO students (ID, Name, Age, Gender, Points)
VALUES (7 ,"Hiyam","22","F",377) ;


#problem 6. Increase the points of **Basma** because she solved a new exercise

UPDATE students 
SET Points = 350 
WHERE Name = "Basma" and Points =300;

#problem 7. Decrease the points of **Alex** because he's late today

UPDATE students 
SET Points = 107 
WHERE Name = "Alex" and Points =200;

# ---------------------------------------------------------------





# ------------ Creating Table ----------------------------
   
    #create a table 
    CREATE TABLE  graduates (
    ID INTEGER NOT NULL PRIMARY KEY,
    Name  TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
	Graduation TEXT
	
	);
#--------------------------------------------------------------

  #----------------Execute SQL-------------------------------

     #1copied 
     INSERT INTO graduates (ID, Name, Age, Gender , Points , Graduation)
	 SELECT 4, "Layal", '18', "F" , 350 , 08/09/2018  FROM students 
	 WHERE ID = 4;



     #2Add the graduation
     UPDATE graduates 
     SET Graduation = "08/09/2018" 


     #3. Remove Layal's record from **students**
     DELETE FROM students WHERE ID = 4;

  #--------------------------------------------------------------------------





  #-----------------### Joins-------------------------------------------

  #Execute SQL

  #1. Produce a table 

  #  CREATE TABLE companies_employees (
	# 		ID INTEGER AUTO_INCREMENT NOT NULL,
	# 		Name TEXT NOT NULL UNIQUE,
	# 		CompanyName  TEXT NOT NULL UNIQUE,
	# 		CompanyDate  INTEGER NOT NULL
	# 	);

  #-1. Produce a table that contains, for each employee, his/her name, company name, and company date.
    SELECT employees.ID ,employees.Name,employees.Role , employees.Company ,companies.Date
		FROM   employees
		RIGHT JOIN companies
		ON employees.ID = companies.ID;


  #2. Find the name of **employees** that work in companies made before 2000.
    SELECT employees.ID ,employees.Name,employees.Role , employees.Company ,companies.Date 
		FROM   employees
		RIGHT JOIN companies
		ON employees.ID = companies.ID
		
		WHERE companies.Date <= 2000 ;

  #3. Find the name of company that has a graphic designer.

    SELECT employees.ID ,employees.Name,employees.Role , employees.Company ,companies.Date
    FROM   employees
    RIGHT JOIN companies
    ON employees.ID = companies.ID
    WHERE employees.Role = 'Graphic Designer';