CREATE DATABASE college;
CREATE DATABASE IF NOT EXISTS college;

DROP DATABASE IF EXISTS company;

USE college;

CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

INSERT INTO student VALUES (1,"Akshay",27);
INSERT INTO student VALUES (2,"Imran",26);

INSERT INTO student
(id, name, age)
VALUES
(3,"Ravi", 32),
(4,"Guru", 50); 

SELECT * FROM student;

SHOW DATABASES;
SHOW TABLES;

CREATE TABLE test1 (
id INT,
name VARCHAR(50),
age INT,
city VARCHAR(20),
PRIMARY KEY (id, name)
);

CREATE Table emp (
id INT,
salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES (101); 

SELECT * FROM emp;