
-- creating database
CREATE DATABASE company_db;
USE company_db;
-- creating table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);
-- inserting values into table
INSERT INTO employees (first_name, last_name, department, salary, hire_date)
VALUES 
('Ravi', 'Kumar', 'HR', 45000, '2021-05-12'),
('Sneha', 'Patel', 'IT', 65000, '2020-03-15'),
('Arjun', 'Mehta', 'Finance', 55000, '2019-11-22'),
('Priya', 'Singh', 'IT', 72000, '2022-07-01'),
('Vijay', 'Rao', 'HR', 48000, '2023-01-10'),
('Anita', 'Sharma', 'Finance', 60000, '2021-09-05');

-- SELECT clause
SELECT first_name, last_name, department
FROM employees;
-- WHERE clause
SELECT *
FROM employees
WHERE salary > 50000;
-- ORDER BY clause
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;
-- GROUP BY Clause
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;
-- HAVING Clause
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000;
-- LIMIT Clause
SELECT *
FROM employees
LIMIT 3;



