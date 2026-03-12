
CREATE DATABASE pizza_sales;
USE pizza_sales;

CREATE TABLE orders (
order_id INT PRIMARY KEY,
order_date DATE,
order_time TIME
);

CREATE TABLE order_details (
order_details_id INT PRIMARY KEY,
order_id INT,
pizza_id VARCHAR(50),
quantity INT
);

CREATE TABLE pizzas (
pizza_id VARCHAR(50) PRIMARY KEY,
pizza_type_id VARCHAR(50),
size VARCHAR(10),
price DECIMAL(5,2)
);

CREATE TABLE pizza_types (
pizza_type_id VARCHAR(50) PRIMARY KEY,
name VARCHAR(100),
category VARCHAR(50)
);
