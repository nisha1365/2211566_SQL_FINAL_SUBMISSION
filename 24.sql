
select student_info.first_name, course_info.Course_code
from student_info left join
course_info on student_info.course_code=course_info.Course_code;
select student_info.first_name, course_info.Course_code
from course_info right join
student_info on course_info.course_code=student_info.Course_code;