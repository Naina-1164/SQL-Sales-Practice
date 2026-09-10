-- SQL Sales Practice - Version 1
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

-- 3. Display all records
SELECT *
FROM sales;

-- 4. Show only Electronics products
SELECT *
FROM sales
WHERE category = 'Electronics';

-- 5. Find products with price greater than 1000
SELECT product, price
FROM sales
WHERE price > 1000;

-- 6. Sort products from highest to lowest price
SELECT product, price
FROM sales
ORDER BY price DESC;

-- 7. Calculate total quantity sold
SELECT SUM(quantity) AS total_quantity_sold
FROM sales;

-- 8. Calculate average product price
SELECT AVG(price) AS average_price
FROM sales;

-- 9. Find category-wise total quantity sold
SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category;
