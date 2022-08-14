select distinct student_info.Student_id,student_info.first_name from student_info
inner join course_fees 
on student_info.course_code=course_fees.course_code
where (base_fees+Special_Fees+infra_fees)*(1-Discount/100)<1500;
