create database Pizza_hut;
-- creating tables with columns(attributes) to store data in table
create table orders(
order_id int not null,
order_date date not null,
order_time time not null,
primary key (order_id));

create table order_detail(
order_details_id int not null,
order_id int not null,
pizza_id varchar(50) not null,
quantity int not null ,
primary key (order_details_id));

-- Q1 Retrieve the total number of orders placed.
select count(*) from orders;


-- Q2 Calculate the total revenue generated from pizza sales.
SELECT 
    round(SUM(order_detail.quantity * pizzas.price),2) AS 'Total Revenue'
FROM
    order_detail
        JOIN
    pizzas ON order_detail.pizza_id = pizzas.pizza_id;
    
    
-- Q3 Identify the highest-priced pizza. 
SELECT 
    pizza_types.name, pizzas.price AS 'Highest Price'
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY price DESC
LIMIT 1;


-- Q4 Identify the most common pizza size ordered.
SELECT 
    pizzas.size, COUNT(order_detail.order_details_id)
FROM
    pizzas
        JOIN
    order_detail ON pizzas.pizza_id = order_detail.pizza_id
GROUP BY pizzas.size; 


-- Q5 List the top 5 most ordered pizza types along with their quantities.
SELECT 
    pizza_types.name, SUM(order_detail.quantity) as quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_detail ON pizzas.pizza_id = order_detail.pizza_id
    group by pizza_types.name
ORDER BY quantity DESC
LIMIT 5;


-- Q6 Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    pizza_types.category, SUM(order_detail.quantity) AS Quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_detail ON pizzas.pizza_id = order_detail.pizza_id
GROUP BY pizza_types.category
ORDER BY Quantity DESC;


-- Q7 Determine the distribution of orders by hour of the day.
SELECT 
    HOUR(order_time) AS Hours,
    COUNT(order_id) AS Quantity
FROM
 orders
GROUP BY Hours
ORDER BY Quantity desc;


-- Q8 Join relevant tables to find the category-wise distribution of pizzas.
SELECT 
    category, COUNT(name)
FROM
    pizza_types
GROUP BY category;


-- Q9 Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    ROUND(AVG(quantity), 0) AS avg_pizza_order
FROM
    (SELECT 
        orders.order_date, SUM(order_detail.quantity) AS quantity
    FROM
        orders
    JOIN order_detail ON orders.order_id = order_detail.order_details_id
    GROUP BY orders.order_date) AS order_quantity;
    
    
-- Q10 Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    pizza_types.name,
    round(SUM(order_detail.quantity * pizzas.price)) AS Total_Revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_detail ON order_detail.pizza_id = pizzas.pizza_id 
    group by pizza_types.name 
    order by Total_Revenue desc
    limit 3; 












