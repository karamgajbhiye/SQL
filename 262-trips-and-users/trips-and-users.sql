/* Write your PL/SQL query statement below */

WITH UnbannedTrips AS (
    SELECT 
        t.id,
        t.request_at,
        t.status
    FROM Trips t
    INNER JOIN Users c ON t.client_id = c.users_id AND c.banned = 'No'
    INNER JOIN Users d ON t.driver_id = d.users_id AND d.banned = 'No'
    WHERE t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
    ORDER BY t.request_at
)

SELECT request_at as Day,
ROUND (SUM(CASE
WHEN status IN ('cancelled_by_client','cancelled_by_driver') THEN 1 
ELSE 0
END) * 1 / COUNT(*), 2
) AS "Cancellation Rate" 

FROM UnbannedTrips
GROUP BY request_at
