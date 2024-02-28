CREATE DATABASE IF NOT EXISTS TestCompany;

USE TestCompany;

CREATE TABLE Employee_info(
id INT PRIMARY KEY,
name VARCHAR(50),
salary BIGINT
);

INSERT INTO Employee_info
(id, name,salary)
VALUES
(1,"adam", 25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM Employee_info;