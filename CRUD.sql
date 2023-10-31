-- PostgreSQL
-- Create the "products" table in PostgreSQL
CREATE TABLE products (
    product_id serial PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Insert a new product into the "products" table
INSERT INTO products (product_name, price)
VALUES ('Widget', 19.99);

-- Select all products
SELECT * FROM products;

-- Select a specific product by product_id
SELECT * FROM products WHERE product_id = 1;

-- Select products with a price less than $20
SELECT * FROM products WHERE price < 20.00;

-- Select products and order them by price in ascending order
SELECT * FROM products ORDER BY price ASC;

-- Select the top 5 products with the highest prices
SELECT * FROM products ORDER BY price DESC LIMIT 5;

-- Update the price of a product with a specific product_id
UPDATE products
SET price = 24.99
WHERE product_id = 1;

-- Delete a product with a specific product_id
DELETE FROM products
WHERE product_id = 1;


-- MYSQL
-- Create the "products" table in MySQL
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Insert a new product into the "products" table
INSERT INTO products (product_name, price)
VALUES ('Widget', 19.99);

-- Select all products
SELECT * FROM products;

-- Select a specific product by product_id
SELECT * FROM products WHERE product_id = 1;

-- Select products with a price less than $20
SELECT * FROM products WHERE price < 20.00;

-- Select products and order them by price in ascending order
SELECT * FROM products ORDER BY price ASC;

-- Select the top 5 products with the highest prices
SELECT * FROM products ORDER BY price DESC LIMIT 5;

-- Calculate the total sales for each product
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id;

-- Update the price of a product with a specific product_id
UPDATE products
SET price = 24.99
WHERE product_id = 1;

-- Delete a product with a specific product_id
DELETE FROM products
WHERE product_id = 1;
