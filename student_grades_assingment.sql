create database university;
use university;

select * from student_grades;
## A ##
##Q1##
select count(RecordID) from student_grades;
##################################
##Q2##
select avg(grade) from student_grades;
#######################################
##Q3##
select max(grade) from student_grades;
#######################################
##Q4##
select min(grade) from student_grades;
#######################################
##Q5##
select count(distinct studentID) from student_grades;
#######################################
##Q6##
select courseID, avg(grade) from student_grades group by courseID;
#######################################
##Q7##
select department, count(distinct studentID) from student_grades group by department;
#######################################
##Q8##
select courseID, max(grade) from student_grades group by courseID;
#######################################
##Q9##
select department , min(grade) from student_grades group by department;
#######################################
##Q10##
select studentID , count(courseID) from student_grades group by studentID;
#######################################

## B ##
## Q11 ##
select courseID, avg(grade) from student_grades group by courseID having avg(grade)>70;
######################################
## Q12 ##
select studentID,count(distinct courseID) from student_grades
group by studentID having count(distinct courseID)>3;
######################################
## Q13 ##
select department , avg(grade) from student_grades group by department having avg(grade)<65;
######################################
## Q14 ##
select studentID, max(grade) from student_grades group by studentID having max(grade)=100;
######################################
## Q15 ##
select courseID ,count(distinct studentID) from student_grades 
group by courseID having count(distinct studentID)>=20;
######################################

## C ##
## Q16 ##
select studentID , count(distinct courseID) , avg(grade) from student_grades
group by studentID having count(distinct courseID) >= 4 and avg(grade) >80;
#####################################
## Q17 ##
select department, max(grade) , avg(grade) from student_grades
group by department having max(grade) >= 2* avg(grade);
#####################################
## Q18 ##
select courseID , avg(grade) from student_grades
group by courseID having avg(grade) > (select avg(grade) from student_grades);

#####################################
## Q19 ##
select studentID , min(grade) from student_grades
group by studentID having min(grade) > 70;
#####################################
## Q20 Query students whose highest grade is less than 70 ##
select studentID , max(grade) from student_grades
group by studentID having max(grade) < 70;
#####################################
## 19- Query students whose lowest grade is greater than 70.##
##20- Query students whose lowest grade is greater than 70. ##
## same question so i changed the last one to ""Query students whose highest grade is less than 70.""##
