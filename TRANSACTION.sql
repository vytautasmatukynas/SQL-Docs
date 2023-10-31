-- POSTGRESQL
-- BEGIN a transaction
BEGIN;

-- Perform some operations (for example, inserting or updating data)
INSERT INTO employees (employee_id, first_name, last_name) VALUES (1, 'John', 'Doe');
UPDATE accounts SET balance = balance - 100 WHERE account_number = 'A';

-- Check the changes (optional)
-- SELECT * FROM employees;
-- SELECT * FROM accounts;

-- If something goes wrong or you want to cancel the changes, use ROLLBACK
ROLLBACK;

-- Check the results after the rollback (optional)
-- SELECT * FROM employees;
-- SELECT * FROM accounts;


-- MYSQL
-- Start a transaction
START TRANSACTION;

-- Perform some operations (for example, inserting or updating data)
INSERT INTO employees (employee_id, first_name, last_name) VALUES (1, 'John', 'Doe');
UPDATE accounts SET balance = balance - 100 WHERE account_number = 'A';

-- Check the changes (optional)
-- SELECT * FROM employees;
-- SELECT * FROM accounts;

-- If something goes wrong or you want to cancel the changes, use ROLLBACK
ROLLBACK;

-- Check the results after the rollback (optional)
-- SELECT * FROM employees;
-- SELECT * FROM accounts;
