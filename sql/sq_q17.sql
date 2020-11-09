/* Write a SQL query to find the country where the most assistant referees come from,
and the count of the assistant referees..*/
SELECT count(a.ass_ref_id) AS referee_count, c.country_name AS country_name
FROM asst_referee_mast a
INNER JOIN soccer_country c
ON a.country_id = c.country_id
GROUP BY c.country_name
HAVING referee_count =
 (SELECT max(referee_count) FROM
    (SELECT count(a.ass_ref_id) AS referee_count
    FROM asst_referee_mast a
    INNER JOIN soccer_country c
    ON a.country_id = c.country_id
    GROUP BY c.country_name
    ) ref_Count);