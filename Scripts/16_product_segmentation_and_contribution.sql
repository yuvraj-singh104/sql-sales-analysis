-- 1. Yearly product-wise contribution with average and sales difference
WITH yearly_product_sales AS (
  SELECT
  YEAR(f.order_date) AS order_year,
  p.product_name,
  SUM(f.sales_amount) AS current_sales
  FROM gold.fact_sales f
  LEFT JOIN gold.dim_products p
  ON f.product_key = p.product_key
  WHERE f.order_date IS NOT NULL
  GROUP BY YEAR(f.order_date), p.product_name
)
SELECT
order_year,
product_name,
current_sales,
AVG(current_sales) OVER (PARTITION BY product_name) AS avg_sales,
(current_sales - AVG(current_sales) OVER (PARTITION BY product_name)) AS sales_difference
FROM yearly_product_sales;
