# Write your MySQL query statement below

with Salary AS (

    select *, dense_rank() over(order by salary desc) as rnk
    from employee

)
select coalesce(max(salary),null) as SecondHighestSalary from Salary
where rnk=2;