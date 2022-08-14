SELECT COUNT(*) FROM course_fees;
SELECT COUNT(DISTINCT(course_code)) FROM course_fees;
SELECT COUNT(DISTINCT(base_fees)) FROM course_fees;
SELECT COUNT(DISTINCT(special_fees)) FROM course_fees;
SELECT COUNT(DISTINCT(course_code)) FROM course_fees_history;
SELECT COUNT(DISTINCT(base_fees)) FROM course_fees_history;
SELECT COUNT(DISTINCT(special_fees)) FROM course_fees_history;

CREATE TABLE course_info(
course_code VARCHAR(10) PRIMARY KEY,
course_name VARCHAR(20) NOT NULL,
course_description VARCHAR(25),
course_start_date DATE,
course_duration INTEGER,
no_of_participants INTEGER,
course_type CHAR(3)
);


CREATE TABLE student_info(
student_Id  VARCHAR(10) PRIMARY KEY,
first_name varchar(20),
last_name VARCHAR(25),
address VARCHAR(150)
);
