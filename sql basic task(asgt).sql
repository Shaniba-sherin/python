use DB1
create table students(
student_id int primary key,
student_name varchar(30),
age char(2),
gender varchar(10),
course varchar(20),
fees int,
city varchar(15)
);

select *from students;

insert into students
values(111,'adam',20,'male','data_analytics',45000,'eranakulam'),
(112,'catrine',22,'female','digital_marketing',35000,'kollam'),
(113,'bernold',24,'male','ui_ux',40000,'idukki'),
(114,'angellina',23,'female','data_science',55000,'malappuram'),
(115,'justin',19,'male','graphic_disigner',35000,'kozhikode'),
(116,'rose',22,'female','accounting',44000,'kannur'),
(117,'augestine',20,'male','vfx',70000,'kasarkode'),
(118,'jesslie',19,'female','designer',25000,'trissur'),
(119,'bieber',20,'male','medical_coding',65000,'alappuzha'),
(120,'maddie',23,'female','python',30000,'trivandrum');

select * from students;

create table employees(
employee_id int primary key,
employee_name varchar(20),
department varchar(10),
salary dec,
age char(20),
city varchar(100),
experiance int
);

select* from employees;

insert into employees values
(111,'alexander','cardiology',55000,35,'benguluru',9),
(112,'benjamin','orthology',46700,30,'bombay',6),
(113,'tia','casuality',30000,27,'chennai',3),
(114,'rishi','nuerology',34000,29,'kochi',4),
(115,'aish','urology',20000,25,'mumbai',1),
(116,'xavi','pediatrics',53000,40,'kolkatta',15),
(117,'thara','optometry',33000,31,'delhi',5),
(118,'ashna','ent',41500,33,'mumbai',4),
(119,'blessly','psychatry','65000',37,'chennai',7),
(120,'lia','gastrology',49700,28,'kolkatta',2);

select * from employees;

select employee_name,salary+5000 as bonus from employees;

select employee_name,salary-2000 as deducted from employees;

select employee_name,salary*12 as annual_salary from employees;

select employee_name,salary*1.1 as increament from [dbo].[employees];

select employee_name,salary*15/100 as increament15 from [dbo].[employees];

select employee_name,salary from [dbo].[employees]   where salary>30000;

select employee_name,salary from [dbo].[employees]   where salary<25000;

select employee_name,salary from [dbo].[employees]   where salary=40000;

select employee_name,age from [dbo].[employees]   where age>=30;

select employee_name,age from [dbo].[employees]   where age<=25;

select employee_name,experiance from [dbo].[employees] where experiance<>2;

select employee_name,salary from [dbo].[employees]   where salary>30000 and experiance>2;

select employee_name,salary from [dbo].[employees] where department='casuality' and salary>25000;

select employee_name,city from [dbo].[employees] where city='mumbai' or city='kolkatta';

select employee_name,age,salary from [dbo].[employees] where age>25 and salary<40000;

select employee_name,department,experiance from [dbo].[employees] where department='psychatry' or experiance>5;

select employee_name,city,salary from employees where salary>2500 and city!='mumbai';

select employee_name,salary from employees where salary between 25000 and 50000;

select employee_name,age from employees where age between 25 and 35;

select employee_name,department from employees where department in ('cardiology','nuerology','orthology');

select employee_name,city from employees where city in ('mumbai','chennai','kolkkatta');

select employee_name,department from employees where department in ('cardiology','nuerology','orthology');

select employee_name,department from employees where department!= 'nuerology'or department='psychatry';
