
SELECT pt.category,
SUM(od.quantity * p.price) AS total_sales
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY total_sales DESC;


SELECT pt.name,
SUM(od.quantity * p.price) AS revenue
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY revenue DESC;


SELECT pt.name,
SUM(od.quantity) AS total_quantity
FROM order_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_quantity DESC;

SELECT HOUR(order_time) AS order_hour,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_hour;

SELECT DAYNAME(order_date) AS day,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY day;
