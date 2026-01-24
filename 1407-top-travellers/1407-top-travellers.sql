# Write your MySQL query statement below

with tableA as (

select user_id, sum(distance) as travelled_distance
from Rides
group by 1

)
select b.name,COALESCE(a.travelled_distance, 0) AS travelled_distance 
from users b
left join tableA a on a.user_id=b.id
order by 2 desc,1 asc

-- select name,distance as travelled_distance
-- from Users a 
-- left join Rides b on a.id=b.user_id
-- group by 1
-- order by travelled_distance desc

