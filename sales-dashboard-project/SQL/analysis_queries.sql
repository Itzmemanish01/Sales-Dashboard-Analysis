create database superstore;
use superstore;
create table sales_data(
c1 int)
;

select sum(sales), sum(profit), ((sum(profit)*100)/sum(sales)) as profit_margin
from sales_data;

select sum(sales), sum(profit), category
from sales_data
group by category;

select sum(sales) as total_sales, sum(profit) as total_profit, `Sub-Category` as sc
from sales_data
group by `Sub-Category`
order by total_profit;

select sum(sales) as total_sales, sum(profit) as total_profit, region
from sales_data
group by region;

select state, sum(sales) as total_sales
from sales_data
group by state
order by total_sales desc
limit 10;

select `order year`, sum(sales), sum(profit)
from sales_data
group by `order year`;

select `order month`, sum(sales), sum(profit)
from sales_data
group by `order month`
order by `order month`;

select `sub-category`, avg(discount) as Average_Discount
from sales_data
group by `sub-category`
order by Average_Discount desc;

select count(*), `ship mode`
from sales_data
group by `ship mode`;

select `customer name`, sum(sales) as total_sales
from sales_data
group by `customer name`
order by total_sales desc
limit 10;