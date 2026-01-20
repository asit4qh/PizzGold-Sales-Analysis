-- 9. Analyze the cumulative revenue generated over time.
select dates, sum(revenue) over(order by dates) as cum_revenue from 
(select orders.date as dates , 
sum(pizzas.price * order_details.quantity) as revenue 
from order_details join pizzas 
on order_details.pizza_id = pizzas.pizza_id 
join orders on orders.order_id = order_details.order_id 
group by dates) as sales;