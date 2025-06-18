-- View all data
SELECT *
FROM superstore



-- 1. Top Customers by Order Volume
SELECT
"Customer Name",
COUNT(DISTINCT "Order ID") AS Total_Orders
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Orders DESC
LIMIT 10


-- 2. Top Cities by Total Sales
SELECT  
"City",
COUNT(DISTINCT "Order ID") AS Total_Orders
FROM superstore
GROUP BY "City"
ORDER BY Total_Orders DESC
LIMIT 10


-- 3. Customer Segment Breakdown
SELECT 
  "Segment",
  COUNT(DISTINCT "Order ID") AS total_orders
FROM superstore
GROUP BY "Segment"
ORDER BY total_orders DESC;


-- 4. Count of repeat vs one-time customers
SELECT
  CASE 
    WHEN order_count = 1 THEN 'One-Time Customer'
    ELSE 'Repeat Customer'
  END AS customer_type,
  COUNT(*) AS customer_count
FROM (
  SELECT 
    "Customer ID", 
    COUNT(DISTINCT "Order ID") AS order_count
  FROM superstore
  GROUP BY "Customer ID"
) AS customer_orders
GROUP BY customer_type;


-- 5. Rank customers by number of orders
SELECT 
  "Customer ID",
  "Customer Name",
  COUNT(DISTINCT "Order ID") AS total_orders,
  RANK() OVER (ORDER BY COUNT(DISTINCT "Order ID") DESC) AS customer_rank
FROM superstore
GROUP BY "Customer ID", "Customer Name"
LIMIT 20;



-- 6. Which customer segment generates the highest revenue?
SELECT 
  "Segment",
  ROUND(SUM("Sales"), 2) AS total_revenue
FROM superstore
GROUP BY "Segment"
ORDER BY total_revenue DESC;


-- 7. Which cities have the highest sales volume?
SELECT 
  "City",
  ROUND(SUM("Sales"), 2) AS total_sales
FROM superstore
GROUP BY "City"
ORDER BY total_sales DESC
LIMIT 10;


