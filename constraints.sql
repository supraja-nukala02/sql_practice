-- Create a database
CREATE DATABASE company_db;
USE company_db;

-- Create a table with different constraints
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,                        -- PRIMARY KEY: uniquely identifies each employee
    emp_name VARCHAR(50) NOT NULL,                 -- NOT NULL: name cannot be empty
    email VARCHAR(100) UNIQUE,                     -- UNIQUE: no duplicate emails
    age INT CHECK (age >= 18),                     -- CHECK: ensures minimum age is 18
    salary DECIMAL(10,2) DEFAULT 25000.00,         -- DEFAULT: if not provided, salary = 25000
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)  -- FOREIGN KEY: links to departments table
);

-- Create departments table (for the foreign key reference)
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- Insert some data
INSERT INTO departments VALUES (1, 'HR'), (2, 'IT');

INSERT INTO employees (emp_id, emp_name, email, age, salary, dept_id)
VALUES 
(101, 'John Doe', 'john@example.com', 25, 30000, 1),
(102, 'Jane Smith', 'jane@example.com', 28, DEFAULT, 2);

-- Try inserting invalid data (this will fail because of CHECK constraint)
-- INSERT INTO employees (emp_id, emp_name, email, age, dept_id) 
-- VALUES (103, 'Tom', 'tom@example.com', 16, 1); -- age < 18 not allowed
