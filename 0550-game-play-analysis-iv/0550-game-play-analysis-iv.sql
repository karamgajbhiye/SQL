# Write your MySQL query statement below

WITH FirstLogin AS (
    SELECT player_id, MIN(event_date) as first_login
    FROM Activity
    GROUP BY player_id
)

Select round(
    COUNT(DISTINCT a.player_id) / 
    (Select COUNT(Distinct player_id) FROM Activity)
    ,2) AS fraction
FROM FirstLogin f JOIN Activity a
ON f.player_id = a.player_id
AND a.event_date = DATE_ADD(f.first_login, INTERVAL 1 DAY);
