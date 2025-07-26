-- 1. Distinct categories from product dimension
SELECT DISTINCT category
FROM gold.dim_products;

-- 2. Distinct category and subcategory
SELECT DISTINCT
  category,
  subcategory
FROM gold.dim_products;
