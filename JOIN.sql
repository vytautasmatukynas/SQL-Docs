-- POSTGRESQL
CREATE TABLE employees (
    employee_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT
);

CREATE TABLE departments (
    department_id serial PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- INNER JOIN:
-- Retrieve records with matching values in both tables
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

-- LEFT JOIN (LEFT OUTER JOIN):
-- Retrieve all records from the left table and matched records from the right table
-- Include NULL values for employees with no matching department
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

-- RIGHT JOIN (RIGHT OUTER JOIN):
-- Retrieve all records from the right table and matched records from the left table
-- Include NULL values for departments with no matching employee
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;

-- FULL JOIN (FULL OUTER JOIN):
-- Retrieve all records from both tables
-- Include NULL values for unmatched records in either table
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
FULL JOIN departments ON employees.department_id = departments.department_id;

-- MYSQL
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for employees
    first_name VARCHAR(50) NOT NULL, -- First name of the employee
    last_name VARCHAR(50) NOT NULL, -- Last name of the employee
    department_id INT -- Foreign key referencing the department they belong to
);

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique identifier for departments
    department_name VARCHAR(50) NOT NULL -- Name of the department
);

-- INNER JOIN:
-- Retrieve records with matching values in both tables
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

-- LEFT JOIN (LEFT OUTER JOIN):
-- Retrieve all records from the left table and matched records from the right table
-- Include NULL values for employees with no matching department
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

-- RIGHT JOIN (RIGHT OUTER JOIN):
-- Retrieve all records from the right table and matched records from the left table
-- Include NULL values for departments with no matching employee
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;

-- FULL JOIN (FULL OUTER JOIN):
-- Retrieve all records from both tables
-- Include NULL values for unmatched records in either table
SELECT employees.first_name, employees.last_name, departments.department_name
FROM employees
FULL JOIN departments ON employees.department_id = departments.department_id;
