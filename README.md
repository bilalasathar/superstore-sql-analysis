# 🛒 Superstore SQL Analysis

This project showcases SQL-based data analysis using the popular Superstore dataset. Queries were executed in **DBeaver** using a **SQLite** database setup. The goal was to extract key business insights related to customer behavior, sales performance, and order patterns.

---

## 📌 Objectives

- Identify top-performing customers and cities
- Analyze customer segments and their contribution to revenue
- Understand order frequency patterns among customers
- Rank customers by activity level using window functions

---

## 🛠️ Tools & Technologies

- **SQL Engine**: SQLite
- **IDE**: DBeaver
- **Techniques Used**:
  - Aggregations: `SUM`, `COUNT`, `ROUND`
  - Grouping: `GROUP BY`, `ORDER BY`
  - Filtering: `HAVING`, `LIMIT`
  - Window Functions: `RANK() OVER`
  - Subqueries

---

## 📁 Dataset

- **Name**: `superstore.csv`
- **Source**: [Kaggle - Superstore Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
- Contains: Orders, Ship Mode, Customer Info, Segments, Cities, and Sales data

---

## 📊 Business Questions & Query Coverage

| No. | Business Question | Query Description |
|-----|-------------------|--------------------|
| 1 | Who are the top 10 most frequent customers? | Counts unique orders per customer |
| 2 | Which cities have the most orders? | Groups order count by city |
| 3 | How are customer segments distributed? | Order breakdown by segment |
| 4 | How many repeat vs one-time customers? | Groups customers by order count |
| 5 | Who are the top-ranked customers? | Uses `RANK()` to sort by total orders |
| 6 | Which segment generates highest revenue? | Aggregates `SUM(Sales)` by segment |
| 7 | Which cities generate the most revenue? | Aggregates `SUM(Sales)` by city |

---
