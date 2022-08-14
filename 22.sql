SELECT * FROM course_info;
INSERT INTO course_info(course_code,course_name,course_type,message)
VALUES
('167','D','ON','OnlineLearning');
ALTER TABLE student_info
ADD COLUMN course_code VARCHAR;
INSERT INTO student_info(student_id,first_name,last_name,address,course_code)
VALUES
('1','Ram','Singh','Banglore','167'),
('2','Nisha','Choudhary','Bhilwara','244');
SELECT student_info.student_id,student_info.first_name,student_info.last_name,course_info.course_code
FROM student_info
INNER JOIN course_info
ON student_info.course_code = course_info.course_code;