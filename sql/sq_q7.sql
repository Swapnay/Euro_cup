/*7.Write a SQL query to find all the venues where matches with penalty shootouts were
played.*/
SELECT count(*)
FROM match_details
WHERE goal_score=1
AND win_lose='W' AND decided_by!='P';