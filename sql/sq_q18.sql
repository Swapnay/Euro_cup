/*.Write a SQL query to find the highest number of foul cards given in one match*/
SELECT count(player_id) AS number
FROM player_booked
GROUP BY match_no
ORDER BY number DESC
limit 1;