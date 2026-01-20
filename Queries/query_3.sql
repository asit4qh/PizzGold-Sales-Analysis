
-- 3. Identify the most common pizza size ordered
SELECT pizzas.size, count(order_details.order_details_id) AS total_order FROM pizzas join order_details 
on pizzas.pizza_id = order_details.pizza_id
group by size order by total_order desc;