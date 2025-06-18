-- Top 10 customers by total number of orders
SELECT 
    "Customer Name",
    COUNT(DISTINCT "Order ID") AS total_orders
FROM superstore
GROUP BY "Customer Name"
ORDER BY total_orders DESC
LIMIT 10;
