SELECT course_fees.discount,course_info.course_description
FROM course_fees
INNER JOIN course_info
ON course_info.course_code = course_fees.course_code;