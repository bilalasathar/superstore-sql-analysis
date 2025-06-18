SELECT 
  "City",
  ROUND(SUM("Sales"), 2) AS total_sales
FROM superstore
GROUP BY "City"
ORDER BY total_sales DESC
LIMIT 10;
