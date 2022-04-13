create table student(id number(4),fname varchar2(15),email varchar2(25));
create sequence student_seq
	start with 1
	increment by 1;
create table teacher(id number(4),fname varchar2(15),email varchar2(25),subject varchar2(15));
create sequence teacher_se
	start with 1
	increment by 1;
create table subject(id number(4),name varchar2(15),time varchar2(25));
create sequence subject_seq
	start with 1
	increment by 1;
//Class Report
select student.fname,subject.subject,subject.time,teacher.tname from student,subject,teacher 
	where subject.subject=teacher.subject and student.subject=subject.subject 
	and subject.subject='"+request.getParameter("subject")+"'"
select * from teacher
select * from subject
insert into student values(?,?,?,?)
insert into subject values(?,?,?)
insert into teacher values(?,?,?,?)
select subject_seq.NEXTVAL from dual
select teacher_se.NEXTVAL from dual
select student_seq.NEXTVAL from dual
