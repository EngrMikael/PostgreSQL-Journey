-- connect first into postgres database
-- \c postgres

-- Dropping the database first before creating
DROP DATABASE IF EXISTS "MyDatabase";
CREATE DATABASE "MyDatabase";

-- after dropping the existing MyDatabase if there is any and creating a new MyDatabase
-- connect to it using 
-- \c "MyDatabase"

-- Dropping the tables first before creating
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS orders;

-- Creating Tables and assigning proper variable types
CREATE TABLE customers(
    id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    country VARCHAR(50),
    score INT,
    CONSTRAINT pk_customers PRIMARY KEY (id)
);

CREATE TABLE orders(
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    sales INT,
    CONSTRAINT pk_orders PRIMARY KEY (order_id)
);

-- Inserting values into the Tables
INSERT INTO customers (id, first_name, country, score) VALUES
    (1, 'Maria', 'Germany', 350),
    (2, ' John', 'USA', 900),
    (3, 'Georg', 'UK', 750),
    (4, 'Martin', 'Germany', 500),
    (5, 'Peter', 'USA', 0);

INSERT INTO orders(order_id, customer_id, order_date, sales) VALUES
    (1001, 1, '2021-01-11', 35),
    (1002, 2, '2021-04-05', 15),
    (1003, 3, '2021-06-18', 20),
    (1004, 6, '2021-08-31', 10);