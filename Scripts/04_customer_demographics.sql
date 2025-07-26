-- 1. Customer count by country ordered by total
SELECT
  country,
  COUNT(customer_key) AS total_customers
FROM gold.dim_customers
GROUP BY country
ORDER BY total_customers DESC;

-- 2. Customer count by gender
SELECT
  gender,
  COUNT(customer_key) AS total_customers
FROM gold.dim_customers
GROUP BY gender
ORDER BY total_customers DESC;
