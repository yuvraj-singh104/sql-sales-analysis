-- 1. Top 5 products by revenue
SELECT TOP 5
  p.product_name,
  SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p ON p.product_key = f.product_key
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- 2. Top 5 subcategories by revenue
SELECT TOP 5
  p.subcategory,
  SUM(f.sales_amount) AS total_revenue
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p ON p.product_key = f.product_key
GROUP BY p.subcategory
ORDER BY total_revenue DESC;

-- 3. Product revenue with ranking
SELECT
  p.product_name,
  SUM(f.sales_amount) AS total_revenue,
  ROW_NUMBER() OVER (ORDER BY SUM(f.sales_amount) DESC) AS rank_products
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p ON p.product_key = f.product_key
GROUP BY p.product_name;
