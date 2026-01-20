/* Write your PL/SQL query statement below */

with query AS (
    
select class,count(student) from courses
group by class
having count(student)>=5

)
select class from query;

-- select class from (
-- select class,count(student) from courses
-- group by class
-- having count(student)>=5
-- ) A