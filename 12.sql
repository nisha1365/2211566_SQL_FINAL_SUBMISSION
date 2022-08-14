SELECT * FROM course_fees;
INSERT INTO course_fees(course_code,base_fees,special_fees,discount)
VALUES
('9',NULL,'2000','25'),
('12',NULL,'3000','50'),
('14','300','4000','25'),
('31','175','5000','50');
SELECT MAX(base_fees)
FROM course_fees;
SELECT MIN(base_fees)
FROM course_fees;