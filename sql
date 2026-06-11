analysis_queries.sql
-- Total Sales
SELECT SUM(sales) AS total_sales
FROM sales;

-- Total Profit
SELECT SUM(profit) AS total_profit
FROM sales;

-- Top 10 Products
SELECT product_name,
       SUM(sales) revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- Region Wise Sales
SELECT region,
       SUM(sales) revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

-- Monthly Sales Trend
SELECT MONTH(order_date) month,
       SUM(sales) revenue
FROM sales
GROUP BY month;
