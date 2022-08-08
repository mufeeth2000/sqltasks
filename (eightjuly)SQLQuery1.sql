use em
create table em2(ename varchar(30),id int,esalary int)
insert into em2 values('muf',001,10000)
insert into em2 values('raja',0006,60000)
insert into em2 values('kumar',002,20000)
insert into em2 values('john',003,30000)
insert into em2 values('jack',004,40000)
insert into em2 values('peter',005,50000)
select*from em2
select avg(esalary) as 'Average Salary' from em2
select min(esalary) as 'Minimum Salary' from em2
select max(esalary) as 'Maximum Salary' from em2
select count(esalary) as 'Count Salary' from em2
select sum(esalary) as 'Sum Salary' from em2
select avg(esalary) as 'Average Salary',ename from em2 group by ename 
select*from em2 order by esalary desc
create synonym emp2 for em2
select*from emp2
select*from em2
drop synonym if exists emp2

create table students
(
SID int primary key,
SName varchar(25) not null,
SDept int not null,
SClub int not null,
)

create table SDept
(
DID int primary key,
DeptName varchar(25) not null
)

create table SClub
(
CID int primary key,
ClubName varchar(25) not null
)
insert into students values( 111,'ram',789,901)
insert into students values( 112,'sam',788,902)
insert into students values( 113,'kum',787,903)
insert into SDept values( 789,'cse')
insert into SDept values( 788,'eee')
insert into SDept values( 787,'eee')
insert into Sclub values(901,'sport')
insert into Sclub values(902,'human resource')
insert into Sclub values(903,'Lions')
select*from SDept
select*from students
select*from SClub
select SID,SName,SDept,DeptName from students inner join SDept on SDept=DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s inner join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s left join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s right join SDept as d on s.SDept=d.DID
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s full join SDept as d on s.SDept=d.DID

select students.SID,students.SName,students.SDept,SDept.DeptName from students inner join SDept on students.SDept=SDept.DID
create sequence empid as INT start with 1 increment by 5

create table sample
(
id int primary key IDENTITY(1,1),
name varchar(20)
)
insert into sample values('Sam')
select * from sample

create table sample1
(
id int primary key ,
name varchar(20)
)
insert into sample1 values(NEXT VALUE FOR EMPID,'chan')
select * from sample1
insert into sample1 values(NEXT VALUE FOR EMPID,'jackey')
insert into sample1 values(NEXT VALUE FOR EMPID,'ben')
select NEXT VALUE FOR EMPID
create view Sports
as
select s.SID,s.SName,s.SClub,s.SDept,d.DeptName from students as s full join SDept as d on s.SDept=d.DID
select * from sports