/*. Write a SQL query that returns the total number of goals scored by each position on
each country’s team. Do not include positions which scored no goals..*/
SELECT sum(goal_agnst),c.country_name
FROM soccer_team s
INNER JOIN soccer_country c
ON s.team_id = c.country_id
GROUP BY group_position,team_id
HAVING sum(goal_agnst)>0;