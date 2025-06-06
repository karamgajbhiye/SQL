/* Write your PL/SQL query statement below */
select max(salary) as SecondHighestSalary from (
select salary,
dense_rank() over (order by salary desc) as rnk
 from Employee
) sub
where rnk =2