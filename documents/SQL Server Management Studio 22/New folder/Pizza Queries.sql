select sum(total_price) as Total_Revenue from pizza_sales;
Select sum(total_price)/count(distinct order_id) as Avg_order_value from Pizza_sales
select sum(quantity) as Total_pizza_sold from pizza_sales
select count(distinct order_id) as Total_orders from pizza_sales
select cast(sum(quantity)  as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) As avg_pizza_per_order from pizza_sales
select*from pizza_sales
Select DATENAME(DW,order_date)as Order_day ,COUNT(distinct order_id) as Total_orders
From pizza_sales
Group by DATENAME(DW,Order_date) ORDER BY Total_orders ASC;
Select DATEPART(HOUR,Order_time) as Order_hours,Count(distinct order_id) as Total_orders
From pizza_sales
Group by DATEPART(HOUR,Order_time)  order by Total_orders ,DATEPART(HOUR,Order_time) 
Select Pizza_category,sum(total_price) as Total_sales,sum(total_price)*100 / (select sum(total_price) from pizza_sales  WHERE MONTH(Order_date)=1) as percentage_total_sales
from pizza_sales where month(order_date) =1
group by pizza_category
select Pizza_size,cast(SUM(total_price)  as decimal(10,2))as Total_sales,cast(sum(total_price) as decimal(10,2)) *100 /(select (sum(total_price)) from pizza_sales) as Percentage_total_sales
from Pizza_sales 
Group by Pizza_size
Order by Percentage_total_sales desc
Select pizza_category,sum(quantity) as Total_pizza_sold 
From pizza_sales
Group by pizza_category
select TOP 5 pizza_name,sum(quantity) as Total_Pizzas_sold
from pizza_sales where month(order_date)=1
Group by Pizza_name
Order by Total_pizzas_sold asc 
