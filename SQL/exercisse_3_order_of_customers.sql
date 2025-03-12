/*
Question 1: Total Orders Per Customer

Write a query to display the total number of orders placed by each customer, 
along with their name and the date they joined. Sort the results by the total number of orders in descending order.
*/



/*
Question 2: Rank Customers by Spending

For each customer, calculate their total spending (sum of the total amounts from the `Orders` table) 
and rank them by total spending within their respective country. 
Use a **window function** to rank the customers.
*/
1.

select customers.customer_id, customers.customer_name, customers.join_date, count(orders.order_id) as total_orders
from customers, orders where customers.customer_id=orders.customer_id
group by customers.customer_id, customers.customer_name, customers.join_date
order by total_orders DESC;

2.

select customers.customer_id, customers.customer_name, customers.country, sum(orderitems.quantity*orderitems.price) as totalspending,
rank() over (order by sum(orderitems.quantity*orderitems.price) DESC) as spendingrank
from customers join orders on orders.customer_id=customers.customer_id join orderitems on orderitems.order_id=orders.order_id
group by customers.customer_name,customers.customer_id, customers.country;