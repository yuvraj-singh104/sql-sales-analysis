-- 1. Yearly customer-wise purchase frequency
SELECT
c.customer_key,
YEAR(f.order_date) AS order_year,
CONCAT(c.first_name, ' ' ,c.last_name) AS Full_name,
COUNT(f.order_number) AS total_orders,
SUM(f.sales_amount) AS total_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key = c.customer_key
WHERE order_date IS NOT NULL
GROUP BY c.customer_key,YEAR(f.order_date), CONCAT(c.first_name, ' ' ,c.last_name)


-- 2. High value customers by country
SELECT
c.country,
CONCAT(c.first_name, ' ' ,c.last_name) AS Full_name,
SUM(f.sales_amount) AS total_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key = c.customer_key
GROUP BY c.country, CONCAT(c.first_name, ' ' ,c.last_name)
ORDER BY total_sales DESC;
