/*. .Write a SQL query to find referees and the number of matches they worked in each
venue.*/
SELECT r.referee_name,count(m.match_no), v.venue_name
FROM referee_mast r
INNER JOIN match_mast m on r.referee_id = m.referee_id
INNER JOIN soccer_venue v on v.venue_id=m.venue_id
GROUP BY r.referee_name,v.venue_name;