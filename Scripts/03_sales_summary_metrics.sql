-- 1. Total sales amount
SELECT
  SUM(sales_amount) AS total_sales
FROM gold.fact_sales;

-- 2. Total quantity
SELECT
  SUM(quantity) AS total_quantity
FROM gold.fact_sales;

-- 3. Average price
SELECT
  AVG(price) AS avg_price
FROM gold.fact_sales;

-- 4. Total unique orders
SELECT
  COUNT(DISTINCT order_number) AS total_orders
FROM gold.fact_sales;

-- 5. Distinct product_name count from products
SELECT
  COUNT(DISTINCT product_name) AS total_products
FROM gold.dim_products;

-- 6. Distinct customer_key from customers
SELECT
  COUNT(DISTINCT customer_key) AS total_customers
FROM gold.dim_customers;

-- 7. Combined KPIs using UNION ALL
SELECT
  'Total Sales' AS measure_name,
  SUM(sales_amount) AS measure_value
FROM gold.fact_sales
UNION ALL
SELECT
  'Total Quantity' AS measure_name,
  SUM(quantity) AS measure_value
FROM gold.fact_sales
UNION ALL
SELECT
  'Average Price' AS measure_name,
  AVG(price) AS measure_value
FROM gold.fact_sales
UNION ALL
SELECT
  'Total Nr. Orders' AS measure_name,
  COUNT(DISTINCT order_number) AS measure_value
FROM gold.fact_sales
UNION ALL
SELECT
  'Total Nr. Products' AS measure_name,
  COUNT(product_name) AS measure_value
FROM gold.dim_products
UNION ALL
SELECT
  'Total Nr. Customers' AS measure_name,
  COUNT(customer_key) AS measure_value
FROM gold.dim_customers;
