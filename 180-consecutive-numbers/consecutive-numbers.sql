/* Write your PL/SQL query statement below */

with abc as 
(select id , num , id - dense_rank() over(partition by num order by id) as rn from logs

)
select  distinct num as consecutivenums from abc 
group by num, rn
having count(rn) >=3;
 
 ;