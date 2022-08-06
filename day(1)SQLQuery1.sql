create database sq1
create table t1
(
EID int,
EName varchar(20),
EContact varchar (10),
Designation varchar(20)
)
select*from t1
insert into t1 values (1, 'aa', 987654321, 'Designer')
insert into t1 values (2, 'bb', 9017044444, 'BA')
insert into t1 values (3, 'cc', 6363123123, 'Ux Developer')
insert into t1 values (4,'dd', 8842432309, 'full stack devloper')

update t1 set EName = 'yy' where Eid = 3

delete from t1 where EID = 4

alter table t1 add pay varchar(10)

update t1 set pay =2000 where EID = 1
update t1 set pay =3000 where EID = 2
update t1 set pay =4000 where EID = 3

alter database Sq1 modify Name = Sq2

select pay as pay from t1
select * from t1 where EID = 1 

select * from t1 where pay > 2000
select * from t1 where pay <= 2000

select * from t1 where pay >2500 AND Designation = 'Designer' 
select * from t1 where pay <2500 OR Designation = 'BA'
select * from t1 where pay between 2500 and 3000 
select * from t1 where EID in (1)
select * from t1 where EID not in (1)
select * from t1 where Designation in ('Developer')


select * from t1 where EName like 'a%'
select * from t1 where EName not like 'c%'
select * from t1 where EName like '[a - b]%'






