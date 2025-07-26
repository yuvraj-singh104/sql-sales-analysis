-- 1. Join sales and customer dimension
SELECT *
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key = c.customer_key;


-- 2.Total sales by customer full name
SELECT
  c.customer_key,
  CONCAT(first_name, ' ', last_name) AS Full_name,
  SUM(f.sales_amount) AS total_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
  ON f.customer_key = c.customer_key
GROUP BY c.customer_key, first_name, last_name
ORDER BY total_sales DESC;


-- 3. Country-wise sales and customers
SELECT
c.country,
SUM(f.sales_amount) AS total_sales,
COUNT(DISTINCT f.customer_key) AS total_customers
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON f.customer_key = c.customer_key
GROUP BY c.country
ORDER BY total_sales DESC;
