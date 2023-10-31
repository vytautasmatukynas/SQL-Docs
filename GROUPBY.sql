-- POSTGRESQL
CREATE TABLE sales (
    sale_id serial PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    amount DECIMAL(10, 2)
);

-- Example 1: Using GROUP BY with COUNT
-- Count the number of sales for each product
SELECT product_id, COUNT(sale_id) AS sales_count
FROM sales
GROUP BY product_id;

-- Example 2: Using GROUP BY with AVG
-- Calculate the average sale amount for each product
SELECT product_id, AVG(amount) AS average_sale
FROM sales
GROUP BY product_id;

-- Example 3: Using GROUP BY with SUM
-- Calculate the total sales amount for each product
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id;

CREATE TABLE orders (
    order_id serial PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

-- Group the orders by customer_id and calculate the count of orders and total order amount for each customer.
SELECT customer_id, COUNT(order_id) AS order_count, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 3 AND SUM(total_amount) > 1000;

-- MYSQL
-- Create the "sales" table in MySQL
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    amount DECIMAL(10, 2)
);

-- Example 1: Using GROUP BY with COUNT in MySQL
-- Count the number of sales for each product
SELECT product_id, COUNT(sale_id) AS sales_count
FROM sales
GROUP BY product_id;

-- Example 2: Using GROUP BY with AVG in MySQL
-- Calculate the average sale amount for each product
SELECT product_id, AVG(amount) AS average_sale
FROM sales
GROUP BY product_id;

-- Example 3: Using GROUP BY with SUM in MySQL
-- Calculate the total sales amount for each product
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id;

-- Create the "orders" table in MySQL
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

-- Group the orders by customer_id and calculate the count of orders and total order amount for each customer.
SELECT customer_id, COUNT(order_id) AS order_count, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 3 AND SUM(total_amount) > 1000;
