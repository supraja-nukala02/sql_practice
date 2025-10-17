-- 🗂️ Create Database
CREATE DATABASE companyDB;
USE companyDB;

-- 👥 Create Tables
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 📥 Insert Sample Data
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

INSERT INTO employees VALUES
(101, 'Alice', 1, 50000),
(102, 'Bob', 2, 55000),
(103, 'Charlie', 3, 60000),
(104, 'David', NULL, 40000),
(105, 'Eve', 2, 65000);

-- ============================
-- 🔹 1. INNER JOIN
-- ============================
-- Returns records with matching dept_id in both tables
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- ============================
-- 🔹 2. LEFT JOIN
-- ============================
-- Returns all employees even if no department is assigned
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- ============================
-- 🔹 3. RIGHT JOIN
-- ============================
-- Returns all departments even if no employees belong to them
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- ============================
-- 🔹 4. FULL OUTER JOIN (MySQL doesn’t support directly)
-- ============================
-- Use UNION of LEFT and RIGHT joins to simulate
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
UNION
SELECT e.emp_id, e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- ============================
-- 🔹 5. SELF JOIN
-- ============================
-- Example: Show employees with salary greater than another employee
SELECT a.emp_name AS Employee, b.emp_name AS Compared_Employee
FROM employees a
JOIN employees b ON a.salary > b.salary;

-- ============================
-- 🔹 6. CROSS JOIN
-- ============================
-- Combines every employee with every department
SELECT e.emp_name, d.dept_name
FROM employees e
CROSS JOIN departments d;
