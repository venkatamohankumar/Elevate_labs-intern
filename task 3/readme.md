
📘 SQL Data Analysis Task – README  


🎯 Objective:
Use SQL queries to extract and analyze data from the `olist_customers_dataset.csv` using MySQL Workbench.


🛠️ Tools & Dataset:
- Tool Used: MySQL Workbench  
- Database: MySQL  
- Dataset Imported:`olist_customers_dataset.csv`  
- Imported Table Name: `olist_customers`  
- Imported using **Table Data Import Wizard**

✅ Tasks Completed:

1. 🔍 SQL Queries Executed:
- Basic Queries:  
  - `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`  
- Aggregate Functions:  
  - `COUNT()`, `SUM()`, `AVG()`  
- Subqueries:  
  - Group filtering using `HAVING` and correlated subqueries  
- JOINS:
  - `INNER JOIN`, `LEFT JOIN`, simulated `RIGHT JOIN`  
  - Note: Used only one table (`olist_customers`), so joins were demo-style  
- Views:  
  - Created view for grouped customer state  
- Indexing:  
  - Attempted to create index on `customer_city` and `customer_state`  
  - Faced issue: `TEXT/BLOB` fields require length (used `customer_state(10)`)


💾 Deliverables:
- ✅ `SQL DATA QUERY.sql` – All written and tested queries  
- ✅ Screenshots – Output screenshots from MySQL Workbench (saved locally)  
- ✅ This README file


▶️ How to Run:
1. Open **MySQL Workbench**
2. Load the table `olist_customers` using import wizard  
3. Open and run the SQL queries from `SQL DATA QUERY.sql`  
4. Review the outputs and save screenshots

 🎓 Outcome:
- Learned how to work with real-world data using SQL  
- Practiced joins, subqueries, aggregate functions, views, and indexing  
- Understood how to resolve SQL errors and optimize queries

