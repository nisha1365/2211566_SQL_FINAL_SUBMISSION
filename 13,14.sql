SELECT * FROM course_fees;
CREATE TABLE newcol(
sn VARCHAR PRIMARY KEY,
infra_fees DECIMAL(5,3));
ALTER TABLE course_fees
ADD infra_fees DECIMAL(5,3);
INSERT INTO newcol
VALUES
(1,41.3456),
(2,31.5678),
(3,55.6789),
(4,98.1234),
(6,77.6789),
(9,44.5674),
(12,34.3654),
(14,77.7777),
(31,45.7890);
SELECT AVG(newcol.infra_fees) 
FROM course_fees
INNER JOIN newcol
ON course_fees.course_code = newcol.sn;
SELECT DATEDIFF(curdate(),course_start_date) FROM course_info;
