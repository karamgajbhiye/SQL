# Write your MySQL query statement below
select email from person
group by 1
having count(*)>1;