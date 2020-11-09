/*. . Write a SQL query to find the referees who booked the most number of players.*/
SELECT r.referee_name,count(p.player_id) AS bookings
FROM referee_mast r
INNER JOIN match_mast m ON r.referee_id = m.referee_id
INNER JOIN player_booked p ON p.match_no = m.match_no
GROUP BY r.referee_name
ORDER BY bookings DESC
limit 1;