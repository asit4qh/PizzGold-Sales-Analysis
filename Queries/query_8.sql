-- 8. Calculate the percentage contribution of each pizza type to total revenue.
select pizza_types.category, 
round((sum(order_details.quantity * pizzas.price) / 
(select sum(order_details.quantity *  pizzas.price) from order_details join pizzas on order_details.pizza_id = pizzas.pizza_id))*100,2)
 as total_contribution from pizza_types 
join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id 
join order_details on pizzas.pizza_id = order_details.pizza_id 
group by pizza_types.category;