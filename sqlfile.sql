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