create table dlithe.dbo.jk_department
(
department_id int,
department_name varchar(200),
primary key(department_id) 
);
insert into jk_department values ('01','testing');
insert into jk_department values ('02','developer');
insert into jk_department values ('03','devops');
select * from dlithe.dbo.jk_department


create table dlithe.dbo.jks_employee
(
employee_name varchar(100),
employee_id int,
department_id int,
primary key(employee_id),
foreign key(employee_id) references jk_department(department_id)
);
insert into jks_employee  values ('aaaa','1','4');
insert into jks_employee  values ('aaab','2','5');
select * from dlithe.dbo.jks_employee
select * from dlithe.dbo.S_HREMPLOYEES


create table dlithe.dbo.p_location
(
location_id int not null unique,
location_name varchar(200),
loaction_pin int,
primary key(location_id)
);
insert into p_location values('01','bangaluru','11111');
insert into p_location values('02','mysuru','11112');
select * from dlithe.dbo.p_location




--for =
select * from dlithe.dbo.S_HREMPLOYEES where EMPLOYEE_ID = 100;

--for>=
select * from dlithe.dbo.S_HREMPLOYEES where EMPLOYEE_ID >= 130;

--fo <=
select * from dlithe.dbo.S_HREMPLOYEES where EMPLOYEE_ID <=130;

--for<>
select * from dlithe.dbo.S_HREMPLOYEES where EMPLOYEE_ID <> 100;

--for!
select * from dlithe.dbo.S_HREMPLOYEES where EMPLOYEE_ID != 100;

--for or operator
select * from dlithe.dbo.S_HREMPLOYEES where EMPLOYEE_ID >120 OR FIRST_NAME  LIKE 's%';

--FOR AND OPERATOR
select * from dlithe.dbo.S_HREMPLOYEES where EMPLOYEE_ID >120 AND FIRST_NAME LIKE 'A%';

--FOR BETWEEN
select * from dlithe.dbo.S_HREMPLOYEES where EMPLOYEE_ID BETWEEN 100 AND 130;

--FOR LIKE OPERATOR
select * from dlithe.dbo.S_HREMPLOYEES where FIRST_NAME LIKE 's%';

--FOR NOT LIKE OPERATOR
select * from dlithe.dbo.S_HREMPLOYEES where FIRST_NAME NOT LIKE 's%';

--FOR IS NULL
SELECT * FROM dlithe.dbo.S_HREMPLOYEES WHERE EMPLOYEE_ID IS NULL;
SELECT * FROM dlithe.dbo.S_HREMPLOYEES WHERE MANAGER_ID IS NULL;

--FOR IS NOT NULL
SELECT * FROM dlithe.dbo.S_HREMPLOYEES WHERE EMPLOYEE_ID IS NOT NULL;

--FOR IN OPERATOR 
SELECT * FROM dlithe.dbo.S_HREMPLOYEES WHERE EMPLOYEE_ID IN (100,103,106,108,110);


--for top 10
select top 10 * from dlithe.dbo.S_HREMPLOYEES

--for upper
select upper(FIRST_NAME) AS FNAME FROM dlithe.dbo.S_HREMPLOYEES

--FOR LOWER
select upper(FIRST_NAME) AS FNAME,LOWER(LAST_NAME) AS LNAME FROM dlithe.dbo.S_HREMPLOYEES

--FOR SUBTRING
SELECT SUBSTRING('SPOORTHY GOWDA',1,15) AS FIRST_NAME FROM dlithe.dbo.S_HREMPLOYEES 

--FOR CHAR INDEX
SELECT CHARINDEX('G','SPOORTHY GOWDA') AS NAME 

--FOR REPLACE 
SELECT REPLACE('SPOORTHY GOWDA',' ','JK') AS FULLNAME

--FOR CANCAT
SELECT CONCAT ('SPOORTHY',' ','JK','+','GOWDA') AS FULLNAME

--FOR CASE STATEMENT
SELECT CASE WHEN DEPARTMENT_ID =90 THEN 'IT'
WHEN DEPARTMENT_ID =100 THEN 'HR'
WHEN DEPARTMENT_ID =60 THEN 'LOAN'
ELSE 'OTHERS'
END 
FROM dlithe.dbo.S_HREMPLOYEES 

--FOR LENGTH
SELECT LEN ('SPOORTHY')

--FOR RTRIM AND LTRIM
SELECT LTRIM(RTRIM(' SPOORTHY'))



create table dlithe.dbo.S1
(
year int,
state varchar(50),
HAI varchar(50),
operative_procedure varchar(50),
procedure_cou int,
infection_cou int,
SIR INT
)

insert into S1 VALUES ('2022','CALI','HEALTH ASSOCIATED INFECTION,SSI','STATE OF CALIFORNIA POOPLED DATA','515','2','1'),
 ('2021','CALI','HEALTH ASSOCIATED INFECTION,SSI','STATE OF CALIFORNIA POOPLED DATA','777','1','2'),
  ('2020','CALI','HEALTH ASSOCIATED INFECTION,SSI','STATE OF CALIFORNIA POOPLED DATA','332','3','0')



SELECT * FROM dlithe.dbo.T1




create table dlithe.dbo.T1
(
year int,
state varchar(50),
HAI varchar(50),
operative_procedure varchar(50),
procedure_cou int,
infection_cou int,
SIR INT
)


---COLUMN TRANSFORMATION

CREATE TABLE dlithe.dbo.STUD1
(
FIRSTNMAE VARCHAR(50),
LASTNAME VARCHAR(50),
ID INT,
PLACE VARCHAR(50),
NUM INT
)

INSERT INTO STUD1 VALUES ('SPOORTHY','GOWDA',1,'BDVT',11111),('SPOOY','WDA',4,'DVT',11234) ,
('POORTHY','OWDA',7,'VT',111698);

SELECT * FROM dlithe.dbo.STUDNEW

CREATE TABLE dlithe.dbo.STUDNEW
(
FIRSTNMAE VARCHAR(50),
LASTNAME VARCHAR(50),
ID INT,
PLACE VARCHAR(50),
NUM INT,
FULLNAME VARCHAR(50),
NEWNUM INT
)


create table dlithe.dbo.merge5
(
RowID int,	
OrderID int,
OrderDate date,
ShipDate date,
ShipMode varchar(255),
CustomerID varchar(255),
CustomerName varchar(255),
Segment varchar(255),
Country	varchar(255),
City varchar(255),
State varchar(255),
PostalCode int,
Region	varchar(3255),
ProductID varchar(255),	
Category	varchar(255),
SubCategory	varchar(255),
ProductName	varchar(255),
Sales	decimal,
Quantity INT,
Discount decimal,
Profit decimal
)



SELECT * FROM dlithe.dbo.merge5


drop TABLE merge5

----joining

CREATE TABLE dlithe.dbo.employee123
(
id int,
fname varchar(255),
lname varchar(255),
place varchar(255)
)

SELECT * FROM dlithe.dbo.employee123
truncate table employee123

CREATE TABLE dlithe.dbo.sqltable
(
id int,
fname varchar(255),
lname varchar(255),
place varchar(255)
)

insert into sqltable values(4,'diary','q','aaa'),(5,'vidya','w','bbbb'),(6,'cycle','e','ccc');


SELECT * FROM dlithe.dbo.sqltable
truncate table sqltable 

--empty
create table dlithe.dbo.empty
(
id int,
fname varchar(255),
lname varchar(255),
place varchar(255)
)

SELECT * FROM dlithe.dbo.empty
TRUNCATE TABLE empty

create table dlithe.dbo.union1
(
id int,
fname varchar(255),
lname varchar(255),
place varchar(255)
)

insert into union1 values(4,'diary','q','aaa'),(5,'vidya','w','bbbb'),(6,'cycle','e','ccc');


create table dlithe.dbo.union2
(
id int,
fname varchar(255),
lname varchar(255),
place varchar(255)
)

insert into union2 values(1,'spoo','jk','aaa'),(2,'sus','j','bbbb'),(3,'kum','d','ccc');



create table dlithe.dbo.union3
(
id int,
fname varchar(255),
lname varchar(255),
place varchar(255)
)
truncate table union3
insert into union3 values(7,'sou','bv','aaa'),(8,'sinch','sr','bbbb'),(9,'shwe','r','ccc');
SELECT * FROM dlithe.dbo.s2022


----split
create table dlithe.dbo.asplitstudent
(
id int,
name varchar(255),
place varchar(255)
)

SELECT * FROM dlithe.dbo.asplitstudent
insert into asplitstudent  values(7,'spoo','61'),(8,'sinch','41'),
(9,'shwe','39'),(1,'sou','80'),(2,'shsami','20'),(3,'ap','40'),(4,'se','68');

create table dlithe.dbo.s2021
(
id int,
name varchar(255),
marks varchar(255)
)


create table dlithe.dbo.pass
(
id int,
name varchar(255),
marks varchar(255)
)


create table dlithe.dbo.FD
(
id int,
name varchar(255),
marks varchar(255)
)


---- sales_contacts 
create table dlithe.dbo.s2022
(
id int ,
product  varchar(225),
price int,
year int
)


create table dlithe.dbo.s2021
(
id int ,
product  varchar(225),
price int,
year int

)

create table dlithe.dbo.s2020
(
id int ,
product  varchar(225),
price int,
year int
)
select table dlithe.dbo.s2020

SELECT * FROM dlithe.dbo.s2021

SELECT * FROM dlithe.dbo.s2020

SELECT * FROM dlithe.dbo.s2022



create table dlithe.dbo.union0000
(
id int,
fname varchar(255),
lname varchar(255),
place varchar(255)
)

select * from dlithe.dbo.union0000


--rank

create table dlithe.dbo.bjk_department
(
department_id int,
department_name varchar(200),

);
insert into bjk_department values ('01','testing');
insert into bjk_department values ('02','developer');
insert into bjk_department values ('03','devops');

select * from dlithe.dbo.bjk_department


---rank
 select
rank () over (order by department_id) as rankno,department_id,department_name from bjk_department;




--dense rank
 select
  DENSE_RANK () over (order by department_id) as dense,department_id,department_name from bjk_department;
 
 
 ---row number
 select
  ROW_NUMBER  () over (order by department_id) as dense,department_id,department_name from bjk_department;
 
 
 ----slowly changing
create table dlithe.dbo.abjk_department
(
department_id int,
department_name varchar(200),

);
insert into abjk_department values ('01','testing');
insert into abjk_department values ('02','developer');
insert into abjk_department values ('03','devops');

select * from dlithe.dbo.abjk_department
select * from dlithe.dbo.abjk_department_tgt

 ---target
 

create table dlithe.dbo.abjk_department_tgt
(
department_id int,
department_name varchar(200),

);
update abjk_department
set department_name = 'IT'
WHERE department_id =1

