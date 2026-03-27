# Write your MySQL query statement below
select 
i.unique_id as unique_id, e.name as name
from Employees e left join EmployeeUNI i on e.id = i.id