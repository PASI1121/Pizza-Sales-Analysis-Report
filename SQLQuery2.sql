select * from pizza_sales
select sum(total_price) as Total_Revenue from pizza_sales
select sum(total_price)/count(distinct(order_id)) as Avg_order_value from pizza_sales
select sum(quantity) as Total_pizzas_sold from pizza_sales
select count(distinct(order_id)) as Total_orders from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Avg_pizzas_per_order
from pizza_sales

SELECT datename(weekday,order_date) AS day,count(distinct order_id) 
from pizza_sales 
group by datename(weekday,order_date)

SELECT datename(month,order_date) AS Month,count(distinct order_id) as Total_orders
from pizza_sales 
group by datename(month,order_date)
order by Total_orders desc

select distinct pizza_name from pizza_sales

SELECT distinct pizza_category , sum(total_price) as total_pizza_price, (sum(total_price)*100/sum(sum(total_price)) OVER ()) as Total_sales_pct 
from pizza_sales
GROUP BY pizza_category

select distinct pizza_size , sum(total_price) as total_pizza_price, cast(sum(total_price)*100/sum(sum(total_price)) OVER ()as decimal (10,2)) as percentage
from pizza_sales
group by pizza_size
order by percentage desc

select distinct pizza_category , sum(quantity) as Num_of_pizza,  (sum(quantity) * 100.0 / sum(sum(quantity)) OVER ()) as percentage
from pizza_sales
group by pizza_category


select top 5 pizza_name, sum(total_price) as Total_price
from pizza_sales
group by pizza_name
order by Total_price desc


select top 5 pizza_name, sum(total_price) as Total_price
from pizza_sales
group by pizza_name
order by Total_price asc

select top 5 pizza_name, count(distinct order_id) as Total_orders
from pizza_sales
group by pizza_name
order by Total_orders desc

select top 5 pizza_name, sum(quantity) as Total_quantity
from pizza_sales
group by pizza_name
order by Total_quantity desc

select top 5 pizza_name, sum(quantity) as Total_quantity
from pizza_sales
group by pizza_name
order by Total_quantity asc




