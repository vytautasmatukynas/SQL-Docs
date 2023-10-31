-- POSTGRESQL
-- Create the "employees" table
CREATE TABLE employees (
    employee_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL
);

-- Add a new column "phone_number" to the "employees" table
ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(15);

-- Change the data type of the "phone_number" column to VARCHAR(20)
ALTER TABLE employees
ALTER COLUMN phone_number SET DATA TYPE VARCHAR(20);

-- Rename the "phone_number" column to "contact_number" in the "employees" table
ALTER TABLE employees
RENAME COLUMN phone_number TO contact_number;

-- Set a default value of 'N/A' for the "contact_number" column in the "employees" table
ALTER TABLE employees
ALTER COLUMN contact_number SET DEFAULT 'N/A';

-- Remove the default value for the "contact_number" column in the "employees" table
ALTER TABLE employees
ALTER COLUMN contact_number DROP DEFAULT;

-- Drop the "contact_number" column from the "employees" table
ALTER TABLE employees
DROP COLUMN contact_number;

-- MYSQL
-- Create the "employees" table in MySQL
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL
);

-- Add a new column "phone_number" to the "employees" table
ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(15);

-- Change the data type of the "phone_number" column from VARCHAR(15) to VARCHAR(20)
ALTER TABLE employees
MODIFY COLUMN phone_number VARCHAR(20);

-- Rename the "phone_number" column to "contact_number" in the "employees" table
ALTER TABLE employees
CHANGE COLUMN phone_number contact_number VARCHAR(20);

-- Set a default value of 'N/A' for the "contact_number" column in the "employees" table
ALTER TABLE employees
ALTER contact_number SET DEFAULT 'N/A';

-- Remove the default value for the "contact_number" column in the "employees" table
ALTER TABLE employees
ALTER contact_number DROP DEFAULT;

-- Drop the "contact_number" column from the "employees" table
ALTER TABLE employees
DROP COLUMN contact_number;
