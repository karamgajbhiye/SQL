# Write your MySQL query statement below


SELECT id,
   CASE 
       WHEN id % 2 = 0 THEN Lag(student, 1) OVER (ORDER BY id)
        ELSE lead(student, 1,student) OVER (ORDER BY id)
       END AS student
FROM seat;