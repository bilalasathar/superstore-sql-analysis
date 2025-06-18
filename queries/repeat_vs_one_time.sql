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
