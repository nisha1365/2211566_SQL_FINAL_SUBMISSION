SELECT course_start_date,SUM(No_of_participants) AS No_of_participants
FROM course_info
WHERE course_type = 'CLR'
GROUP BY course_start_date
HAVING SUM(no_of_participants)>10;