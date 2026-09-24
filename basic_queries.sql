-- SQL Sales Practice - Version 3
-- Beginner SQL Project

-- 1. Create the sales table
CREATE TABLE sales (
    id INT,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

-- 2. Add sample sales data
INSERT INTO sales (id, product, category, quantity, price) VALUES
(1, 'Laptop', 'Electronics', 2, 55000.00),
(2, 'Mouse', 'Electronics', 5, 700.00),
(3, 'Keyboard', 'Electronics', 3, 1200.00),
(4, 'Headphones', 'Electronics', 4, 1800.00),
(5, 'Notebook', 'Stationery', 10, 80.00),
(6, 'Pen Set', 'Stationery', 8, 150.00),
(7, 'Office Chair', 'Furniture', 2, 6500.00),
(8, 'Study Table', 'Furniture', 1, 8500.00);

-- Version 1: Basic queries

SELECT * FROM sales;

SELECT *
FROM sales
WHERE category = 'Electronics';

SELECT product, price
FROM sales
WHERE price > 1000;

SELECT product, price
FROM sales
ORDER BY price DESC;

SELECT SUM(quantity) AS total_quantity_sold
FROM sales;

SELECT AVG(price) AS average_price
FROM sales;

SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category;

-- Version 2: Filtering, sorting and aggregate practice

SELECT product, quantity
FROM sales
WHERE quantity >= 3;

SELECT product, category, quantity
FROM sales
ORDER BY quantity DESC;

SELECT MAX(price) AS highest_price
FROM sales;

SELECT MIN(price) AS lowest_price
FROM sales;

SELECT COUNT(*) AS total_records
FROM sales;

SELECT AVG(quantity) AS average_quantity
FROM sales;

SELECT product, price
FROM sales
WHERE price >= 5000
ORDER BY price DESC;

-- Version 3: First INNER JOIN

-- Create a second table for category information
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Stationery'),
(3, 'Furniture');

-- 17. Join sales with categories
SELECT
    s.product,
    c.category_name,
    s.quantity,
    s.price
FROM sales AS s
INNER JOIN categories AS c
    ON s.category = c.category_name;

-- 18. Beginner challenge: sort the joined result by price
SELECT
    s.product,
    c.category_name,
    s.quantity,
    s.price
FROM sales AS s
INNER JOIN categories AS c
    ON s.category = c.category_name
ORDER BY s.price DESC;


-- Version 4: INNER JOIN + GROUP BY

-- 19. Calculate category-wise total sales using the joined tables
SELECT
    c.category_name,
    SUM(s.quantity * s.price) AS total_sales
FROM sales AS s
INNER JOIN categories AS c
    ON s.category = c.category_name
GROUP BY c.category_name
ORDER BY total_sales DESC;
