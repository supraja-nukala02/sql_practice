CREATE DATABASE sql_operators;
USE sql_operators;
CREATE TABLE Employees(
EmpId INT PRIMARY KEY,
EmpName VARCHAR(50),
Age INT,
Salary INT,
Department VARCHAR(50)
);
INSERT INTO Employees values
(1, 'Anita', 25, 30000, 'HR'),
(2, 'Rahul', 32, 45000, 'IT'),
(3, 'Kiran', 28, 38000, 'Finance'),
(4, 'Sneha', 30, 42000, 'IT'),
(5, 'Vijay', 35, 52000, 'HR');
-- Arithmetic operator --
SELECT EmpName, Salary, Salary * 2 AS increased_salary from Employees;
-- Comparison Operator -- 
SELECT EmpName, age from Employees WHERE age>30;
SELECT EmpName, Salary from Employees WHERE salary = 45000;
-- Logical Operators --
SELECT EmpName, Department, Salary from Employees 
WHERE Department = 'IT' AND Salary > 40000;
SELECT EmpName, Department,Salary from Employees
WHERE Department = 'IT' OR Salary >40000;
SELECT EmpName, Department from Employees 
WHERE Department NOT IN('IT');
SELECT EmpName, Department from Employees 
WHERE Department IN('IT');
SELECT EmpId,EmpName from employees 
WHERE EmpName LIKE '_A%';
