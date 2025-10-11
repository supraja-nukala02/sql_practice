-- creating database
CREATE DATABASE company_db;
USE company_db;

-- creating table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary DECIMAL(10,2),
    emp_join_date DATE,
    is_active BOOLEAN
);

-- insert values into table
INSERT INTO employees (emp_id, emp_name, emp_salary, emp_join_date, is_active)
VALUES 
(1, 'Supraja', 45000.50, '2024-05-20', TRUE),
(2, 'Rahul', 52000.75, '2023-11-15', FALSE);

SELECT * FROM employees;


-- 📄 Output:
-- | emp_id | emp_name | emp_salary | emp_join_date | is_active |
-- | ------ | -------- | ---------- | ------------- | --------- |
-- | 1      | Supraja  | 45000.50   | 2024-05-20    | TRUE      |
-- | 2      | Rahul    | 52000.75   | 2023-11-15    | FALSE     |


