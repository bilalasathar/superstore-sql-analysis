-- 1. Top Customers by Order Volume
SELECT
"Customer Name",
COUNT(DISTINCT "Order ID") AS Total_Orders
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Orders DESC
LIMIT 10
