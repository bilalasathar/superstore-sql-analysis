-- 2. Top Cities by Total Sales
SELECT  
  "City",
  COUNT(DISTINCT "Order ID") AS Total_Orders
FROM superstore
GROUP BY "City"
ORDER BY Total_Orders DESC
LIMIT 10;
