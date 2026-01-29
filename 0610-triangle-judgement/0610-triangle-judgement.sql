# Write your MySQL query statement below
select *, 
-- case 
-- when (x+y>z and x+z>y and y+z>x) then 'Yes'
-- else 'No'
-- End as triangle
if(x+y>z and x+z>y and y+z>x, 'Yes', 'No') as triangle
from Triangle;