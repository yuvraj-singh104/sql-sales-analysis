-- 1. Monthly running total and moving average
SELECT
order_date,
total_sales,
SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales,
AVG(avg_price) OVER (ORDER BY order_date) AS moving_average
FROM (
  SELECT
  DATETRUNC(MONTH, order_date) AS order_date,
  SUM(sales_amount) AS total_sales,
  AVG(price) AS avg_price
  FROM gold.fact_sales
  WHERE order_date IS NOT NULL
  GROUP BY DATETRUNC(MONTH, order_date)
) t;

-- 2. Yearly running total and moving average
SELECT
order_date,
total_sales,
SUM(total_sales) OVER (ORDER BY order_date) AS running_total_sales,
AVG(avg_price) OVER (ORDER BY order_date) AS moving_average
FROM (
  SELECT
  DATETRUNC(YEAR, order_date) AS order_date,
  SUM(sales_amount) AS total_sales,
  AVG(price) AS avg_price
  FROM gold.fact_sales
  WHERE order_date IS NOT NULL
  GROUP BY DATETRUNC(YEAR, order_date)
) t;
