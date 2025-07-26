-- 1. Total revenue by category
SELECT
  SUM(f.sales_amount) AS total_revenue,
  p.category
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p ON p.product_key = f.product_key
GROUP BY p.category
ORDER BY total_revenue DESC;

-- 2. Revenue by customer
SELECT
c.customer_key,
CONCAT(c.first_name,' ',c.last_name) AS Full_name,
SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c ON c.customer_key = f.customer_key
GROUP BY c.customer_key, CONCAT(c.first_name,' ',c.last_name)
ORDER BY total_revenue DESC;

-- 3. Quantity sold by country
SELECT
  c.country,
  SUM(f.quantity) AS total_sold_items
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c ON c.customer_key = f.customer_key
GROUP BY c.country
ORDER BY total_sold_items DESC;
