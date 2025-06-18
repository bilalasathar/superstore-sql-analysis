SELECT 
  "Segment",
  ROUND(SUM("Sales"), 2) AS total_revenue
FROM superstore
GROUP BY "Segment"
ORDER BY total_revenue DESC;
