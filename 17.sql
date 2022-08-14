SELECT * FROM course_info;
ALTER TABLE course_info 
ADD message VARCHAR(40);
INSERT INTO course_info(course_code,course_name,course_type,message)
VALUES
('CS01','A','CLR','Class Room'),
('CS02','B','EL','ELearning'),
('CS03','C','OF','Offline Reading');
SELECT course_type,message
FROM course_info
WHERE course_type in ('CLR','EL','OF');