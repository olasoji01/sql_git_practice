CREATE TABLE student(
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
age INT CHECK(age >=18),
reg_date DATE DEFAULT GETDATE(),
department_id INT )

SELECT * FROM student


CREATE TABLE department(
department_id INT PRIMARY KEY,
department_name VARCHAR(30)
)

SELECT * FROM department
ALTER TABLE department
ADD CONSTRAINT unique_departmentname UNIQUE (department_name)

--Initiating foreign key constrain to department_id in student table
ALTER TABLE student
DROP CONSTRAINT [UQ__student__870C3C8B8925D38D]

SELECT * FROM student

-- Drop student table
DROP TABLE student 

SELECT *FROM department

CREATE TABLE student(
student_id INT PRIMARY KEY,
student_name VARCHAR(50) NOT NULL,
age INT CHECK(age >=18),
reg_date DATE DEFAULT GETDATE(),
department_id INT )

SELECT * FROM student
--adding the column (contact) to the student table
ALTER TABLE student
ADD contact VARCHAR(30)

--this is how to insert
INSERT INTO student
VALUES(1,'shade',20,'2024-04-16',5,'09015964995'),
      (2,'Tobi',23,'2024-06-19',10,'09015964995'),
	  (3,'soji',35,'2024-09-23',15,'09015964995'),
	  (4,'Awwal',42,'2024-07-06',20,'09015964995'),
	  (5,'Emmanuel',31,'2024-11-05',25,'09015964995')

	  --dropping the deparment table 
	  DROP TABLE department

--trying to 
SELECT *FROM department

--dropping the unique key under the department table 
ALTER TABLE department
DROP CONSTRAINT unique_departmentname