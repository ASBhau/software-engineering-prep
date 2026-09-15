create database college;
use college;

create table student (
id int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student
(id, name, marks, grade, city)
values
(101, "Alpha", 93, "A", "Delhi"),
(102, "Charlie", 83, "B", "Mumbai"),
(103, "Foxtrot", 92, "A", "Hyderabad"),
(104, "Lima", 73, "C", "Bangalore"),
(105, "Tango", 85, "B", "Kolkata");

select * from student;
select name, grade from student;
select distinct city from student;

create table student1 (
id int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student1
(id, name, marks, grade, city)
values
(101, "Alpha", 93, "A", "Delhi"),
(102, "Charlie", 83, "B", "Mumbai"),
(103, "Foxtrot", 92, "A", "Hyderabad"),
(104, "Lima", 73, "C", "Bangalore"),
(105, "Tango", 85, "B", "Delhi");

select distinct city from student1;
select * from student1 where city = "Delhi";
select * from student1 where marks > 80;
select * from student1 where marks+10 > 100 and city = "Delhi";
select * from student1 where marks+10 > 100 or city = "Delhi";
select * from student1 where marks between 80 and 90;
select * from student1 where city in ("Delhi","Mumbai");
select * from student1 where city not in ("Delhi","Mumbai");
select * from student1 limit 3;
select * from student1 order by city asc;
select * from student1 order by marks desc;

select max(marks) from student1;
select avg(marks) from student1;
select count(name) from student1;

select city, count(name) from student1 group by city;
select city,name, count(name) from student1 group by city, name;

select city, avg(marks) from student1 group by city order by avg(marks) asc;

select city, count(name) from student1 group by city having max(marks)>90;

set SQL_SAFE_UPDATES = 0;

update student1 set grade = "O" where grade = "A";
update student1 set grade = "B" where marks between 80 and 90;

delete from student where marks<33;