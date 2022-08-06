create database wk
use wk
CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	PAY INT,
	JOINING_DATE DATETIME,
	DEPT CHAR(25),
)
INSERT INTO Worker VALUES(001, 'Monika', 'Arora', 100000, '06-08-2022 10:38:00', 'HR')
INSERT INTO Worker VALUES(002, 'Niharika', 'Verma', 80000, '06-08-2022 10:38:00', 'Admin')
INSERT INTO Worker VALUES(003, 'Vishal', 'Singhal', 300000, '06-08-2022 10:38:00', 'HR')
INSERT INTO Worker VALUES(004, 'Amitabh', 'Singh', 500000, '06-08-2022 10:38:00', 'Admin')
INSERT INTO Worker VALUES(005, 'Vivek', 'Bhati', 500000, '06-08-2022 10:38:00', 'Admin')
INSERT INTO Worker VALUES(006, 'Vipul', 'Diwan', 200000, '06-08-2022 10:38:00', 'Account')
INSERT INTO Worker VALUES(007, 'Satish', 'Kumar', 75000, '06-08-2022 10:38:00', 'Account')
INSERT INTO Worker VALUES(008, 'Geetika', 'Chauhan', 90000, '06-08-2022 10:38:00', 'Admin')
SELECT*FROM Worker
--CMD1
SELECT FIRST_NAME AS WORKER_NAME FROM Worker;
--CMD2
SELECT UPPER(FIRST_NAME) FROM Worker;
--CMD3
select distinct DEPT from worker;
--CMD-4
select substring(FIRST_NAME,1,3) from worker;
--CMD-5
SELECT DISTINCT LEN(DEPT) FROM worker;
--CMD-6
SELECT CONCAT(FIRST_NAME,LAST_NAME)AS 'COMPLETE_NAME' FROM WORKER;
--CMD-7
SELECT * FROM worker WHERE FIRST_NAME in('vipul','satish');
--CMD-8
SELECT * FROM worker WHERE DEPT like'admin%';
--CMD-9
SELECT * FROM worker WHERE FIRST_NAME like'%a';
--CMD-10
SELECT * FROM worker WHERE FIRST_NAME like'%a%';
SELECT*FROM Worker





