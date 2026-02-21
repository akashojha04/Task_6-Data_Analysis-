# view whole database
select * from Orders;

# count total rows in table
select count(*) from Orders;

# select specific columns from table
select order_date, price_each as amount, product_id from orders; 

# total sale sorted by revenue by category 
select productline, sum(sales) as revenue 
from orders 
group by productline 
order by revenue desc;

# year sorted by highest revenue 
 select year(order_date) as Year, sum(sales) as Revenue 
 from orders 
 group by Year
 order by Revenue desc;
 
# order with highest sales value
select order_id, sum(sales) as Sales
from orders
group by order_id
order by Sales desc 
limit 10;

# order with lowest sales value
select order_id, sum(sales) as Sales
from orders
group by order_id
order by Sales asc
limit 10;

# total clients 
select count(distinct order_id) as Clients from orders;

# highest sold product by quantity
select product_id, productline, sum(quantity_ordered) as total_quantity
from orders
where productline = (
	select productline
    from orders
    group by productline
    order by sum(quantity_ordered) desc 
	limit 1 )
group by product_id, productline
order by total_quantity desc
limit 1;

# highest sales values orders
select * from orders order by sales desc limit 10;

# lowest sales values orders
select * from orders order by sales asc limit 10;

# quarterly analysis of sales data
select year(order_date) as year, quarter(order_date) as quarter, sum(sales) as total_sales
from orders
group by year, quarter
order by year, quarter;

# monthly analysis of sales data
select year(order_date) as year, monthname(order_date) as month, sum(sales) as total_sales
from orders
group by year, month
order by year, total_sales;

# highest sales month from over combined years
select monthname(order_date) as month, sum(sales) as total_sales
from orders
group by month
order by total_sales desc;

# get order data from specific month of a year
SELECT *
FROM orders
WHERE YEAR(order_date) = 2005
AND MONTH(order_date) = 3;

# order between two date
SELECT * FROM orders
WHERE order_date BETWEEN '2003-03-01' AND '2003-06-30';

# total quantity order by clients
select order_id as Clients, sum(quantity_ordered) as quantity 
from orders
group by Clients;

# count order volume based on month and year
select year(order_date) as year, monthname(order_date) as month, count(distinct order_id) as order_volume
from orders
group by year, month
order by year, month;