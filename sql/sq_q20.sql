/*. Write a SQL query to find the substitute players who came into the field in the first
half of play, within a normal play schedule.*/
SELECT p.player_name,o.match_no, s.country_name
FROM player_mast p
INNER JOIN soccer_country s
ON p.team_id=s.country_id
INNER JOIN  player_in_out o
ON p.player_id=o.player_id
WHERE o.in_out='I'
AND o.play_schedule='NT'
AND o.play_half=1;