-- 1. Top 3 customers by number of orders
SELECT TOP 3
  c.customer_key,
  CONCAT(c.first_name,' ',c.last_name) AS Full_name,
  COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c ON c.customer_key = f.customer_key
GROUP BY c.customer_key, CONCAT(c.first_name,' ',c.last_name)
ORDER BY total_orders DESC
