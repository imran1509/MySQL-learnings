CREATE DATABASE college1;
USE college1;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20) 
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "imran", 78, "C", "Pune"),
(102, "sandhya", 93, "A", "Mumbai"),
(103, "akshay", 85, "B", "Mumbai"),
(104, "Ravi", 96, "A", "Delhi"),
(105, "piyush", 12, "F", "Delhi"),
(106, "Guru", 82, "B", "Delhi");

SELECT * FROM student;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE COLUMN age stu_age INT;

ALTER TABLE student
DROP COLUMN stu_age;

ALTER TABLE student
RENAME TO stu;

TRUNCATE TABLE student;

ALTER TABLE stu
CHANGE COLUMN name full_name VARCHAR(50);

DELETE FROM stu
WHERE marks < 80;

ALTER TABLE stu
DROP COLUMN grade;

CREATE TABLE dept(
 id INT PRIMARY KEY,
 name VARCHAR(50)
);

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
ON DELETE CASCADE
ON UPDATE CASCADE
);


SELECT name, marks FROM student;
SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80;

SELECT *
FROM student
WHERE marks > 80 AND city = "Mumbai";

SELECT *
FROM student
WHERE marks > 80 OR city = "Mumbai";

SELECT *
FROM student
WHERE marks BETWEEN 75 AND 90;

SELECT *
FROM student
WHERE city IN ("Delhi", "Mumbai");

SELECT *
FROM student
WHERE city NOT IN ("Delhi", "Mumbai");

SELECT *
FROM student
ORDER BY city ASC;

SELECT max(marks)
FROM student;

SELECT City, count(rollno)
FROM student
GROUP BY city;

SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks) DESC;

SELECT city
FROM student
GROUP BY city
HAVING max(marks) > 90;

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING max(marks) >= 93
ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET grade = "O"
WHERE grade = "A"

