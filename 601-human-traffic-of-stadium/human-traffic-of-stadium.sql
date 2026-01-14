-- # Write your MySQL query statement below
with visit_cte as (
select s.*, row_number() over() as rn,
id - row_number() over () as diff
from Stadium s
where people >=100
)
select id,visit_date,people from visit_cte
where diff in (
select diff from visit_cte
group by diff
having count(*)>=3
)
order by id asc;

# Alternative using self join

-- SELECT DISTINCT s1.id, s1.visit_date, s1.people
-- FROM Stadium s1
-- JOIN Stadium s2 ON s2.id = s1.id + 1
-- JOIN Stadium s3 ON s3.id = s1.id + 2
-- WHERE s1.people >= 100
--   AND s2.people >= 100
--   AND s3.people >= 100
-- ORDER BY s1.id;
