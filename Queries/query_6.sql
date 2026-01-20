-- 6. Determine the distribution of orders by hour of the day
select Count(order_id) as Total_Order,
hour(orders.time) as Hours from orders
group by hour(orders.time) order by Hours;