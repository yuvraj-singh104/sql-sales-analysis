-- 1. Creating a view with sales, product, and customer information

CREATE VIEW gold.report_customers1 AS
WITH base_query AS (
  SELECT
  f.order_number,
  f.order_date,
  f.sales_amount,
  f.quantity,
  f.customer_key,
  f.product_key,
  p.product_name,
  p.category,
  p.subcategory,
  p.cost
  FROM gold.fact_sales f
  LEFT JOIN gold.dim_products p
  ON f.product_key = p.product_key
  WHERE f.order_date IS NOT NULL
),
product_aggregation AS (
  SELECT
  product_key,
  product_name,
  category,
  subcategory,
  cost,
  SUM(sales_amount) AS total_sales,
  SUM(quantity) AS total_quantity
  FROM base_query
  GROUP BY product_key, product_name, category, subcategory, cost
)
SELECT * FROM product_aggregation;
