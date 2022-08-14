SELECT course_start_date,SUM(No_of_participants) AS No_of_participants
FROM course_info
GROUP BY course_start_date;