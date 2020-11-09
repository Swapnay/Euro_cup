/*8.Write a SQL query to find the match number for the game with the highest number of
penalty shots, and which countries played that match..*/
SELECT m.match_no,c.country_abbr,c.country_name
FROM soccer_country c
INNER JOIN match_details m
ON m.team_id =c.country_id AND m.match_no
in (SELECT match_no
    FROM match_details WHERE penalty_score =
        (SELECT max(penalty_score) FROM match_details)) ;