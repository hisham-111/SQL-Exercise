
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
VALUES (7 ,"Hisham","23","M",377) ;


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

  #-1. Produce a table that contains, for each employee, his/her name, company name, and company date.
   

          CREATE TABLE   JoinTable AS
          SELECT  employees.ID ,employees.Name,employees.Role , employees.Company ,companies.Date
          FROM   employees
          RIGHT JOIN companies
          ON employees.ID = companies.ID;

 

  #2. Find the name of **employees** that work in companies made before 2000.
 
		      SELECT name from  JoinTable 
		     	WHERE Date < 2000 ;

  #3. Find the name of company that has a graphic designer.

          SELECT Company from  JoinTable 
		     	WHERE Role = 'Graphic Designer' ;


    #-------------------Count & Filter----------------------------

   #1. Find the person with the highest number of points in **students**


    	SELECT students.Name from students
			WHERE Points = (
			SELECT max(Points)
			FROM students
      );


    #2. Find the average of points in **students**

      SELECT AVG(Points) 
			FROM students; 

    #3 .Find the number of students that have 500 points
      SELECT count( * ) as total_record FROM `students` 
      WHERE students.Points = 500 

    #4 .Find the names of students that contains 's'


    SELECT * from students 
		where students.Name like '%s%'

    #5 .Find all students based on the decreasing order of their points

    SELECT * FROM students ORDER BY Points desc
