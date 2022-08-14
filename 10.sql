CREATE TABLE Course_Fees(
Course_code VARCHAR PRIMARY KEY,
Base_fees INTEGER,
Special_fees INTEGER,
Discount INTEGER
);

INSERT INTO course_fees(Course_code,Base_fees,Special_fees,Discount)
VALUES
('1','180','100','10'),
('2','150','110','10'),
('3','160','170','5'),
('4','150','100','10'),
('6','190','100','40');

CREATE TABLE course_fees_history(
course_code VARCHAR PRIMARY KEY,
base_fees INTEGER,
special_fees INTEGER,
created_by VARCHAR,
updated_by VARCHAR
);

INSERT INTO course_fees_history(course_code,base_fees,special_fees,created_by,updated_by)
VALUES
('1','120','123','Ram','Ramesh'),
('2','150','110','Bala','Ram'),
('3','160','170','Bala','Vinu'),
('4','170','235','Ram','Ram'),
('6','190','100','Vinod','Vinod');


SELECT course_code,base_fees,special_fees FROM course_fees
UNION
SELECT course_code,base_fees,special_fees FROM course_fees_history;