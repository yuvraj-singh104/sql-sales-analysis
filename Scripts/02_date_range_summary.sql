-- 1. First and last order date with date range in months
SELECT
  MIN(order_date) AS first_order_date,
  MAX(order_date) AS last_order_date,
  DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- 2. Oldest and youngest birthdate + age calculation
SELECT
  MIN(birthdate) AS oldest_birthdate,
  MAX(birthdate) AS youngest_birthdate,
  DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_age,
  DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;
