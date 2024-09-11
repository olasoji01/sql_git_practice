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

--inserting into the department table 
INSERT INTO department(department_id,department_name)
VALUES (1,'computer science'),
       (2,'mathematics'),
	   (3,'french')


--inserting with default date 

INSERT INTO student(student_id,student_name,age,department_id,contact)
values(6,'bisi',22,19,080231452434),
      (7,'ruth',23,11,080231452434),
	  (8,'sola',29,12,080231452434)

--updating values 
--multiple values update 
UPDATE student
SET department_id=3
WHERE student_id in (4,5);

--single values update
UPDATE student
SET contact='012345678'
WHERE student_id=2

--use case statemet to update mulitple rows 
UPDATE student
SET contact = CASE
WHEN student_id=3 THEN '08023222608'
WHEN student_id=7 THEN '08000000000'
ELSE contact 
END
WHERE student_id IN (3,7)
