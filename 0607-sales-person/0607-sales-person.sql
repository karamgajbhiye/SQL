/* Write your PL/SQL query statement below */
with sales as (
    select sales_id from orders o
    left join company c on o.com_id = c.com_id
    where name = 'RED'
)

select name from SalesPerson 
where sales_id not in(select * from sales);


