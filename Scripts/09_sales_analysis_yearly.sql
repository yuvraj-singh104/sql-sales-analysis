-- 1. Yearly total sales (correct group by year only)
SELECT
YEAR(order_date) AS order_year,
SUM(sales_amount) AS total_Sales
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);

-- 2. Yearly sales, with distinct customer count
SELECT
YEAR(order_date) AS order_year,
SUM(sales_amount) AS total_Sales,
COUNT(DISTINCT customer_key) AS total_customers
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);

-- 3. Yearly sales, customers, and quantity
SELECT
YEAR(order_date) AS order_year,
SUM(sales_amount) AS total_Sales,
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date)
ORDER BY YEAR(order_date);
