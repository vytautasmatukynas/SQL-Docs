-- POSTGRESQL
-- Create the "orders" table
CREATE TABLE orders (
    order_id serial PRIMARY KEY,
    order_number VARCHAR(10) NOT NULL
);

-- Create the "order_items" table with a foreign key constraint using CASCADE
CREATE TABLE order_items (
    item_id serial PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(50) NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);

-- Create the "orders" table
CREATE TABLE orders (
    order_id serial PRIMARY KEY,
    order_number VARCHAR(10) NOT NULL
);

-- Create the "order_items" table with a foreign key constraint using CASCADE
CREATE TABLE order_items (
    item_id serial PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(50) NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON UPDATE CASCADE
);

-- Create the "orders" table
CREATE TABLE orders (
    order_id serial PRIMARY KEY,
    order_number VARCHAR(10) NOT NULL
);

-- Create the "order_items" table with foreign key constraints using CASCADE for both DELETE and UPDATE actions
CREATE TABLE order_items (
    item_id serial PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(50) NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE
);


-- MYSQL
-- Create the "orders" table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_number VARCHAR(10) NOT NULL
);

-- Create the "order_items" table with a foreign key constraint using CASCADE
CREATE TABLE order_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(50) NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE
);

-- Create the "orders" table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_number VARCHAR(10) NOT NULL
);

-- Create the "order_items" table with a foreign key constraint using CASCADE
CREATE TABLE order_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(50) NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON UPDATE CASCADE
);

-- Create the "orders" table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_number VARCHAR(10) NOT NULL
);

-- Create the "order_items" table with foreign key constraints using CASCADE for both DELETE and UPDATE actions
CREATE TABLE order_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_name VARCHAR(50) NOT NULL,
    item_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE
);