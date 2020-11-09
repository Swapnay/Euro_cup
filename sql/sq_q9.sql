/*9.Write a SQL query to find the goalkeeper’s name and jersey number, playing for
Germany, who played in Germany’s group stage matches..*/
SELECT p.jersey_no,p.player_name
FROM player_mast p
INNER JOIN match_details m ON
m.team_id =p.team_id
WHERE p.posi_to_play='GK' AND m.play_stage='G' AND p.team_id=1208
GROUP BY jersey_no,player_name;