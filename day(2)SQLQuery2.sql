create database vt
use vt
create table voting
(
ID int primary key,
Name varchar (20) not null,
DOB datetime not null  check (DOB <= current_timestamp),
Age int not null check (age > 18),
Designation varchar (20) default 'self_employed'
)
insert into voting values (1, 'Mufee', '2000-01-27 05:30:03', 24, 'IT ')
insert into voting values (2, 'sri', '1999-10-30 10:04:04',26, 'QA')
insert into voting values (3,'jack','1998-09-06 07:09',24,'Testing')
update voting set Age = 23 where Name = 'Mufee'
update voting set Age = 22 where Name = 'sri'
select * from voting
--create table for department and employee 

create table dept
(
DId int primary key,
DName varchar (20) not null
)

insert into dept values (01, 'BA')
insert into dept values (02, 'Admin')
insert into dept values (03, 'Designer')
insert into dept values (04, 'Tester')

select * from dept

create table emp
(
EId int primary key,
EName varchar (20) not null,
Salary money,
DNo int foreign key references dept (DId)
)

insert into emp values (001, 'muf', 30000, 01)   
insert into emp values (002, 'sri', 15000, 01)
insert into emp values (003, 'kir', 35000, 04)
insert into emp values (004, 'fah', 40000, 03)
insert into emp values (005, 'prs', 70000, 02)

select * from emp

-- parent and child table creation
drop table parent
create table parent
(
pid int primary key,
pname varchar (20) not null,pno int
)
insert into parent values (111, 'nafee')
insert into parent values (112, 'yyy')

select * from parent

create table child
(
 cid int Primary key,
 cname varchar(20) unique,
 pno int FOREIGN KEY References parent(pid) on delete set default on update set default
 )


insert into child values (1, 'moh', 112)
insert into child values (2, 'nav', 111)
insert into child values (3, 'muz', 111)

select * from child

update parent set pid=10 where pid=111
select * from parent
select * from child