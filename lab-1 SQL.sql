
//Lab related to understanding basic concepts of creating tables, inserting data into tables in database 

create database lab2
use lab2
create table student (
	cnic char (13) primary key,
	student_name varchar(255),
	student_address varchar(255),
	age int
);
insert into student values('1', 'zahid ali', 'uet lahore', 23)
insert into student values('2', 'Ahmad bilal', 'uet lahore', 122)
insert into student values('3', 'abdul Samad', 'uet lahore', 13)
insert into student values('4', 'Abdullah safdar', 'uet lahore', 2)
insert into student values('5', 'Rafaay', 'uet lahore', 141),
insert into student values('6', 'Ahsan Farid', 'uet lahore', 9)
insert into student values('7', 'Legend Ahsan', 'uet lahore', 12)


select * from student


select student_name from student where (cnic = '3')
select * from student where student_name = 'Ahmad bilal'
update student set student_name='Zahdi Ali' where (cnic='1')
update student set student_name='Abdul Samad', age='19' where (cnic='3')
update student set student_address = 'ZAhid ali2' where cnic = '1'
select * from student
delete from student where cnic = '3'  // syntax of delete query

create table subject_result(
	course_code char (13),
	course_title varchar(255),
	student_grade varchar(255),
	marks int,
	student_roll  char(13) foreign key references student(cnic)
)
insert into subject_result (course_code, course_title, student_grade, marks) values('CS121', 'Database', 'A+', 90)
insert into subject_result (course_code, course_title, student_grade, marks) values('CS311', 'AOA', 'A-', 85)
insert into subject_result (course_code, course_title, student_grade, marks) values('CS308', 'OS', 'B+', 70)
insert into subject_result (course_code, course_title, student_grade, marks) values('CS201', 'COAL', 'B', 61)
insert into subject_result (course_code, course_title, student_grade, marks) values('CS201', 'OS', 'A+', 61)
insert into subject_result (course_code, course_title, student_grade, marks) values('CS113', 'DLD', 'A', 86)

truncate table subject_result  // syntax of truncate
select * from subject_result


alter table persons add email varchar (255)     /* adding column named email in persons table*/
alter table persons drop column email          /*deleting column in persons table*/
alter table persons alter column personID varchar /*changing datatype of column*/

ALTER TABLE STUDENT ADD EMAIL VARCHAR(255)
ALTER TABLE STUDENT ALTER CoLUMN EMAIL INT
ALTER TABLE STUDENT DRoP CoLUMN EMAIL 
