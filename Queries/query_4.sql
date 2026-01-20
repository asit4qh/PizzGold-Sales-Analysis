-- 4. List the top 5 most order pizza types along with their quantities
SELECT pizza_types.name AS Pizza_Type, sum(order_details.quantity) AS Total_Quantity FROM pizza_types JOIN pizzas 
ON pizza_types.pizza_type_id = pizzas.pizza_type_id 
JOIN order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name ORDER BY Total_Quantity DESC LIMIT 5;