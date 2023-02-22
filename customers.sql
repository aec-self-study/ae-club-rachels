SELECT c.id as customer_id
, c.name
, c.email
, MIN(o.created_at) AS first_order_at
, COUNT(*) as number_of_orders
from analytics-engineers-club.coffee_shop.customers c
LEFT JOIN analytics-engineers-club.coffee_shop.orders o ON c.id=o.customer_id
GROUP BY 1,2,3
ORDER BY 4
LIMIT 5;
