# online_sales Data Analysis – SQL Project 

This repository contains a SQL-based data analysis project focused on online sales orders. The queries analyze order trends over time by extracting date components, computing revenue, and counting product variety on a monthly basis.

## 📁 Contents

- `sqlscript.sql`: SQL script containing all analysis queries.
- `outputss.pdf`: PDF with output screenshots demonstrating the results of each query.

## 🧠 Key Tasks Performed

1. **Extract Month and Year from Order Date**
   - Break down the `order_date` field into `MONTH` and `YEAR` components.

2. **Monthly Revenue Calculation**
   - Aggregate revenue per month using the appropriate aggregation functions.

3. **Group by Year and Month – Calculate Total Volume**
   - Analyze order volume by grouping results over `YEAR` and `MONTH`.

4. **Filter Results for Specific Time Periods**
   - Retrieve data only for a defined period, such as the year `2019`.

5. **Count Distinct Product Orders per Month**
   - Determine how many unique products were ordered each month.

## ✅ How to Use

1. Clone or download the repository.
2. Load `sqlscript.sql` in your SQL editor or database management tool.
3. Execute the queries step by step on your e-commerce dataset.
4. Use `outputss.pdf` as a visual reference to compare outputs.

> ⚠️ Note: Ensure your database includes columns such as `order_date`, `product_id`, and pricing fields. You may need to adjust table or column names according to your own schema.

## 🔧 Requirements

- A SQL-compatible database engine
- Sample dataset with orders and product information

## 📌 Notes

- Queries are designed to be flexible and portable across different SQL platforms.
- Adjust syntax slightly if needed based on the SQL dialect (e.g., date functions may differ).

