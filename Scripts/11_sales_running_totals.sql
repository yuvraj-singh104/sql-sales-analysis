-- 1. Monthly sales and customers
SELECT
DATETRUNC(month, order_date) AS order_date,
SUM(sales_amount) AS total_Sales,
COUNT(DISTINCT customer_key) AS total_customers,
SUM(quantity) AS total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date);

-- 2. Running total of monthly sales
SELECT
order_date,
total_sales,
SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales
FROM (
  SELECT
  DATETRUNC(month, order_date) AS order_date,
  SUM(sales_amount) AS total_sales
  FROM gold.fact_sales
  WHERE order_date IS NOT NULL
  GROUP BY DATETRUNC(month, order_date)
) t;

-- 13. Running total yearly (cumulative sum year over year)
SELECT
order_date,
total_sales,
SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales
FROM (
  SELECT
  DATETRUNC(YEAR, order_date) AS order_date,
  SUM(sales_amount) AS total_sales
  FROM gold.fact_sales
  WHERE order_date IS NOT NULL
  GROUP BY DATETRUNC(YEAR, order_date)
) t;



