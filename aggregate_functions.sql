-- Create Database
CREATE DATABASE company_db;

-- Use Database
USE company_db;

-- Create Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    age INT
);

-- Insert Sample Data
INSERT INTO employees (emp_id, emp_name, department, salary, age) VALUES
(1, 'Ravi Kumar', 'HR', 40000, 29),
(2, 'Anita Sharma', 'IT', 55000, 26),
(3, 'Karan Singh', 'Finance', 48000, 32),
(4, 'Priya Verma', 'IT', 60000, 28),
(5, 'Rohit Das', 'HR', 42000, 30),
(6, 'Neha Patel', 'Finance', 51000, 31);

-- 1. COUNT() - Total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 2. SUM() - Total salary paid to employees
SELECT SUM(salary) AS total_salary
FROM employees;

-- 3. AVG() - Average salary of employees
SELECT AVG(salary) AS average_salary
FROM employees;

-- 4. MIN() - Minimum salary
SELECT MIN(salary) AS lowest_salary
FROM employees;

-- 5. MAX() - Maximum salary
SELECT MAX(salary) AS highest_salary
FROM employees;


