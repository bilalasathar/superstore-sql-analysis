-- 5. Rank customers by number of orders
SELECT 
  "Customer ID",
  "Customer Name",
  COUNT(DISTINCT "Order ID") AS total_orders,
  RANK() OVER (ORDER BY COUNT(DISTINCT "Order ID") DESC) AS customer_rank
FROM superstore
GROUP BY "Customer ID", "Customer Name"
LIMIT 20;
