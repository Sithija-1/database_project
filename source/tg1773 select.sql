select * from batch_attendance_summary;
select * from batch_overall_eligibility;
select * from student_results;
select * from batch_marks_summary;
select * from student;
select * from lecture;
select * from student_course;


CALL get_student_course_marks('U013', 'ICT1222');
CALL get_student_eligibility('U013', 'ICT1222');
CALL get_batch_marks_summary_by_course('Database Management Systems');
