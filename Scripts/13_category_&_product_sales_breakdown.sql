-- 1. Join sales and product dimension
SELECT *
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON f.product_key = p.product_key;


-- 2. Yearly product-wise sales 
SELECT
YEAR(f.order_date) AS order_year,
p.product_name,
SUM(f.sales_amount) AS current_sales
FROM gold.fact_sales f
LEFT JOIN gold.dim_products p
ON f.product_key = p.product_key
WHERE f.order_date IS NOT NULL
GROUP BY YEAR(f.order_date), p.product_name
ORDER BY order_year ASC
