-- 7. Group the orders by date and calculate the average number of pizzas ordered by per day.
create view order_quantity as 
select orders.date, sum(order_details.quantity) as quantity from orders join order_details on orders.order_id = order_details.order_id group by orders.date;
select round(avg(quantity),0) as avg_qty from order_quantity;