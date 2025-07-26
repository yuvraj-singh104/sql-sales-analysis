# SQL Analytics Project: Sales Data Analysis

## 📊 Overview 

This project explores sales data through structured SQL queries to
uncover insights related to customers, products, categories, and
time-based performance. The dataset comprises three main tables:
customers, products, and sales transactions.

## 🗂️ Project Structure 

    sql project/
    ├── README.md                     Project documentation
    ├── data/                         Input CSV datasets
    │   ├── gold.dim_customers.csv
    │   ├── gold.dim_products.csv
    │   └── gold.fact_sales.csv
    └── queries/                      SQL query scripts
        ├── 01_dimension_overview.sql
        ├── 02_date_range_summary.sql
        ├── 03_sales_summary_metrics.sql
        ├── 04_customer_demographics.sql
        ├── 05_product_analysis.sql
        ├── 06_category_sales_analysis.sql
        ├── 07_product_sales_ranking.sql
        ├── 08_top_customers.sql
        ├── 09_sales_analysis_yearly.sql
        ├── 10_sales_analysis_monthly.sql
        ├── 11_sales_running_totals
        ├── 12_sales_vs_average_and_change_analysis.sql
        ├── 13_category_&_product_sales_breakdown.sql
        ├── 14_customer-based_sales_analysis.sql
        ├── 15_customer_segmentation_and_behavior.sql
        ├── 16_product_segmentation_and_contribution.sql
        └── 17_views_and_comprehensive_information.sql

## 🧾 Datasets 

1. `gold.dim_customers.csv` 

- Contains customer details (name, gender, marital status, country,
  etc.)
- 18,484 records

2. `gold.dim_products.csv` 

- Product metadata (category, subcategory, cost, product line, etc.)
- 295 records

3. `gold.fact_sales.csv` 

- Transactional data linking customers and products
- 60,398 records

## 📁 SQL Scripts Breakdown 

| Script                                         | Summary                                             |
|------------------------------------------------|-----------------------------------------------------|
| `01_dimension_overview`                        | Lists distinct product categories and subcategories |
| `02_date_range_summary`                        | Summarizes first/last order date and age analysis   |
| `03_sales_summary_metrics`                     | Calculates total sales, quantities, average price   |
| `04_customer_demographics`                     | Shows customer counts by country and gender         |
| `05_product_analysis`                          | Counts and averages product cost by category        |
| `06_category_sales_analysis`                   | Revenue by category and customer                    |
| `07_product_sales_ranking`                     | Top products and subcategories by revenue           |
| `08_top_customers`                             | Top customers by number of orders                   |
| `09_sales_analysis_yearly`                     | Yearly sales and unique customer count              |
| `10_sales_analysis_monthly`                    | Monthly sales breakdown                             |
| `11_sales_running_totals`                      | Running totals of sales over time                   |
| `12_sales_vs_average_and_change_analysis`      | Moving averages and sales changes over time         |
| `13_category_&_product_sales_breakdown`        | Sales breakdown by product and category yearly      |
| `14_customer-based_sales_analysis`             | Total sales per customer                            |
| `15_customer_segmentation_and_behavior`        | Behavior segmentation by frequency/spending         |
| `16_product_segmentation_and_contribution`     | Contribution analysis by product over time          |
| `17_views_and_comprehensive_information`       | SQL View creation for integrated reporting          |

## 🧰 Tools Used

- **SQL Server** – To run and test SQL queries on the dataset.
- **SSMS** – For writing and executing SQL queries in a user-friendly environment.
- **Git & GitHub** – Version control and hosting the project repository.
- **Markdown** – To create project documentation (README.md).
- **Excel** – Dataset files for input and verification.




## 📌 How to Run 

1.  Load CSVs into your SQL database (e.g., PostgreSQL, SQL Server)
2.  Execute scripts sequentially to explore metrics
3.  Use script 17 for dashboards and reports
 

## 🔍 Key Business Insights

### 1. Total Sales Performance 

- The dataset includes over 60,000 transactions.

- Total sales revenue is substantial, with a diverse product line
  (295+ items) and global customer base (18,000+ customers).

- Average transaction value and order size appear moderate,
  suggesting B2C retail dynamics.

### 2. Top Performing Products 

  - Top 5 products based on frequency and sales amount:

    - Mountain Bikes

    - Road Bikes

    - Road Frames

    - Touring Pedals

    - Bike Helmets

  - These products show high contribution to total revenue,
    indicating strong demand for premium bike parts and accessories.

### 3. Monthly & Yearly Sales Trends 

  - Monthly data shows seasonal trends with noticeable upticks:

  - Likely Q2-Q3 peaks (March--August) -- aligns with warmer months in many countries.

  - Sales dips in Q4 may indicate post-summer slowdown.

  - Yearly trend likely shows consistent year-over-year growth,
  supporting an expanding customer base.

### 4. Customer Behavior Insights 

  - Customer distribution by country suggests:

  - High counts from Australia, Canada, USA, and UK.

  - Suggests a focus on English-speaking markets.

  - Gender and Marital Status breakdowns:


### 5. Sales by Category 

- Components and Bikes are the dominant categories.

- Subcategories like Mountain Bikes and Road Frames consistently top charts.

- Opportunity exists in analyzing underperforming categories for repositioning.

---

## 🛡️ License

This project is licensed under the MIT License. You are free to use, modify, and share this project with proper attribution.

