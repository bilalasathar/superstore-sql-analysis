# 🛒 Superstore SQL Analysis

This project presents a SQL-based data analysis of the popular Superstore dataset using **DBeaver** with a **SQLite database**. The objective is to extract key business insights from retail data through well-structured SQL queries.

---

## 📌 Objectives

- Analyze customer segments and their order behavior
- Identify top-performing cities and regions
- Examine delivery delays and shipping performance
- Understand seasonal order trends and revenue patterns
- Use SQL to solve real-world business problems

---

## 🛠️ Tools & Technologies

- **SQL Engine**: SQLite  
- **IDE**: [DBeaver](https://dbeaver.io/)  
- **Techniques Used**:  
  - Aggregations (`SUM`, `COUNT`, `AVG`)  
  - Filtering (`WHERE`, `HAVING`)  
  - Grouping (`GROUP BY`)  
  - Sorting and Ranking (`ORDER BY`, `RANK() OVER`)  
  - Window Functions  
  - Date manipulation (`JULIANDAY`, `STRFTIME`)  

---

## 📊 Sample Business Questions & Query Coverage

| No. | Business Question | Query Description |
|-----|-------------------|--------------------|
| 1 | Who are the top 10 most frequent customers? | Counts unique orders per customer |
| 2 | Which cities have the most orders? | Groups orders by city |
| 3 | How are customer segments distributed? | Order breakdown by customer type |
| 4 | How many repeat vs one-time customers? | Groups customers by order count |
| 5 | Who are the top-ranked customers? | Uses `RANK()` window function |
| 6 | Which segment generates highest revenue? | Uses `SUM(Sales)` per segment |
| 7 | Which cities generate the most revenue? | Sales breakdown by city |
| 8 | What's the average shipping delay? | Date diff using `JULIANDAY` |
| 9 | What are the monthly order trends? | Uses `STRFTIME()` to group by month |

---
