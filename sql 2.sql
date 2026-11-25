SELECT * FROM students.student_grades;
select count(*) from students.student_grades ;
select avg(grade) from students.student_grades;
select max(grade) from students.student_grades; 
select min(grade) from students.student_grades;
select count(distinct(studentID)) from students.student_grades;
select courseID , avg(grade) from students.student_grades as course_avg group by courseID ;
select Department , count(studentID) from students.student_grades as No_Of_student group by Department;

select CourseID  , avg(grade) from students.student_grades
 group by CourseID having avg(grade) > 75 ;
 
select StudentID , count(courseID) from students.student_grades 
group by StudentID having count(CourseID) > 3 ;
 
select Department , avg(grade)  from students.student_grades
 group by Department  having avg(grade) < 65 ; 
 
select studentID , max(grade) from students.student_grades 
group by studentID having max(grade) = 100;

select courseID , count(studentID) from students.student_grades 
 as student_count group by courseID having count(studentID) >=20 ;
 
select studentID  , count(courseID)  from students.student_grades 
as student_course group by StudentID 
 having count(CourseID) >= 4  and  avg(grade) =80 ;
 
select Department , max(grade) from students.student_grades
 group by Department having max(grade) >= avg(grade)*2 ;


select courseID , avg(grade)  from students.student_grades 
 group by CourseID having avg(grade) > (sum(grade) / count(grade)) ;
 
select studentID , min(grade) from students.student_grades
 group by StudentID having min(grade) > 70 ;
