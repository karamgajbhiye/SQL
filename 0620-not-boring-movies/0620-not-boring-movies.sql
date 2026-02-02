# Write your MySQL query statement below

with Results AS(
    select * from Cinema
    where description <>'boring'
    and id in(select id from Cinema where id%2=1)
)
select id,movie,description,rating 
from Results
order by rating desc;

