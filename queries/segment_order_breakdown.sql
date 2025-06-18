-- Query 3: Customer Segment Breakdown
SELECT 
  "Segment",
  COUNT(DISTINCT "Order ID") AS total_orders
FROM superstore
GROUP BY "Segment"
ORDER BY total_orders DESC;
