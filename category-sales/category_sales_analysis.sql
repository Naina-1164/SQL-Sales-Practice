-- Beginner category-wise sales analysis (SQLite compatible).
-- Run once in a fresh database.

CREATE TABLE IF NOT EXISTS category_sales (
    id INTEGER PRIMARY KEY,
    category VARCHAR(50),
    amount INTEGER
);

INSERT INTO category_sales (id, category, amount) VALUES
(1, 'Electronics', 1500),
(2, 'Clothing', 800),
(3, 'Electronics', 2000),
(4, 'Grocery', 500),
(5, 'Clothing', 1200),
(6, 'Grocery', 700),
(7, 'Electronics', 1000),
(8, 'Clothing', 900);

-- 1. Total sales by category.
SELECT category, SUM(amount) AS total_sales
FROM category_sales
GROUP BY category;

-- 2. Highest-selling category first.
SELECT category, SUM(amount) AS total_sales
FROM category_sales
GROUP BY category
ORDER BY total_sales DESC;

-- 3. Categories with more than 2,000 in total sales.
SELECT category, SUM(amount) AS total_sales
FROM category_sales
GROUP BY category
HAVING SUM(amount) > 2000;

-- 4. Bonus: combine HAVING and ORDER BY.
SELECT category, SUM(amount) AS total_sales
FROM category_sales
GROUP BY category
HAVING SUM(amount) > 2000
ORDER BY total_sales DESC;

-- Expected totals: Electronics 4500, Clothing 2900, Grocery 1200.
