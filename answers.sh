
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
