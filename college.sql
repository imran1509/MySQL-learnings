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