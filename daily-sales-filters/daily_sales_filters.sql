-- 15 Oct 2026: Beginner SQL sales filtering practice
-- SQLite compatible. Run in a fresh database.

CREATE TABLE daily_sales (
    day TEXT PRIMARY KEY,
    amount INTEGER NOT NULL
);

INSERT INTO daily_sales (day, amount) VALUES
('Monday', 1200),
('Tuesday', 1500),
('Wednesday', 1100),
('Thursday', 1800),
('Friday', 2100),
('Saturday', 2500),
('Sunday', 1700);

-- 1. All days with sales of 1,800 or more
SELECT day, amount
FROM daily_sales
WHERE amount >= 1800
ORDER BY amount DESC;

-- 2. Days with sales between 1,500 and 2,100 (inclusive)
SELECT day, amount
FROM daily_sales
WHERE amount BETWEEN 1500 AND 2100
ORDER BY amount DESC;

-- 3. Count days with sales of 2,000 or more
SELECT COUNT(*) AS days_2000_or_more
FROM daily_sales
WHERE amount >= 2000;

-- 4. Total sales on days with sales of 1,800 or more
SELECT SUM(amount) AS filtered_sales_total
FROM daily_sales
WHERE amount >= 1800;

-- Expected: 3 high-sales days (Thursday, Friday, Saturday);
-- 2 days >= 2000; filtered total = 6400.
