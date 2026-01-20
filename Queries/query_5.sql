-- 5. Join the necessary tables to find the total quantity of each pizza category ordered
select pizza_types.category as Category, sum(order_details.quantity) as Total_Quantity from pizza_types join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id join order_details 
on order_details.pizza_id = pizzas.pizza_id group by Category order by Total_Quantity desc;