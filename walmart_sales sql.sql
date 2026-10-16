create table walmart_sales
(
Store int,
Date date,
Weekly_Sales numeric(15,2),
Holiday_Flag int,
Temperature numeric(10,2),
Fuel_Price numeric(10,2),
CPI numeric(10,2),
Unemployment  numeric(10,2)
);

select * from walmart_sales;

-- Total sales analysis ?
select sum(weekly_sales)as total_sales
from walmart_sales;

-- find the average sales?
select avg(weekly_sales) as Avg_sales
from walmart_sales;

--find the total quantity sold?
select sum(weekly_sales) as total_qty_sold
from walmart_sales;

--find average sales by category?
select weekly_sales, avg(weekly_sales) as avg_sales
from walmart_sales
group by weekly_sales
order by avg_sales desc;

-- find all the records where having sales is more than 150000?
select weekly_sales
from walmart_sales
where weekly_sales>1500000;

-- find all the unique records in table?
select distinct store
from walmart_sales;

-- when is the holiday comes what is the average sales?
select holiday_flag , avg(weekly_sales)as avg_sales
from walmart_sales
group by holiday_flag;


-- find the day when minimum and maximum temperature has recorded? 
select date,temperature
from walmart_sales
order by temperature desc
limit 1;
 

 SELECT 'Maximum Temperature' AS Type, Date, Temperature 
 FROM walmart_sales 
 ORDER BY Temperature DESC 
 LIMIT 1;
 
UNION ALL
SELECT 'Minimum Temperature' AS Type, Date, Temperature 
 FROM walmart_sales 
 ORDER BY Temperature ASC 
 LIMIT 1;

-- find the day when the fuel price has recorded high?
select distinct fuel_price,date
from walmart_sales
order by fuel_price desc
limit 1;

-- find the store where the unemplpyment rate is more than 8.5 percent and keep the sales in descending order?
select store,weekly_sales, unemployment
from walmart_sales
where unemployment >8.5
order by weekly_sales desc;

-- find top 3 store which recorded the highest weekly sales
select store,weekly_sales
from walmart_sales
order by weekly_sales desc
limit 3;

--find the store where the lowest cpi has recorded?
select store, CPI,date
from walmart_sales
order by CPI desc
limit 2;

