/*. .. Write a SQL query to find the number of captains who were also goalkeepers..*/
SELECT count(DISTINCT(p.player_id))
 FROM player_mast p
 INNER JOIN match_captain m
 ON p.player_id = m.player_captain
 AND p.posi_to_play='GK';
