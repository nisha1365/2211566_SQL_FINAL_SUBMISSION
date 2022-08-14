select * from course_info;
insert into course_info 
values
('7','python','coding','2021-09-09','56','12','CLR'),
('8','C++','coding','2021-05-09','5','18','EL');

select * from course_fees;

insert into course_fees 
values
('7','250','800','87','69.987'),
('8','450','963','54','30.987');

select * from student_info;

insert into student_info
values
('45','khyati','dahiya','delhi','7'),
('46','mridul','singh','punjab','8');


select student_info.Student_id from student_info
inner join course_fees 
on student_info.course_code=course_fees.course_code
where (base_fees+Special_Fees+infra_fees)*(1-Discount/100)<1500;