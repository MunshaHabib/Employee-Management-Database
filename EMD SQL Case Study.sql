-- LOCATION TABLE 
create database office1;
use office1;
create table location(
location_id int primary key,
city varchar (50)
);
insert into location
(location_id,city)
values
(122,"New york"),
(123,"Dallas"),
(124,"Chicago"),
(167,"Boston");
select * from location;

-- JOBS TABLE-- 
create table jobs(
job_id int primary key ,
designation varchar (50)
);
insert into jobs
(job_id,designation)
values
(667,"clerk"),
(668,"staff"),
(669,"analyst"),
(670,"sales person"),
(671,"manager"),
(672,"president");
select * from jobs;

---- -- DEPARTMENT TABLE 
create table department(
department_id int primary key,
Name varchar (50),
location_id int,
foreign key (location_id) references location (location_id)
);
insert into department
(department_id,Name,location_id)
values
(10,"accounting",122),
(20,"sales",124),
(30,"research",123),
(40,"operations",167);
select * from department;

-- EMPLOYEE TABLE
create table employees1(
employee_id int,
last_name varchar(60),
first_name varchar (60),
middle_name varchar (60),
job_id  int,
hiredate date,
salary int,
comm int default null,
department_id  int ,
foreign key (job_id) references jobs (job_id),
foreign key (department_id) references department (department_id)
);
insert into employees1
(employee_id,last_name,first_name,middle_name,job_id,hiredate,salary,comm,department_id)
values
(7369,"smith","john","Q",667,"1984-12-17",800,default,20),
(7499,"allen","kevin","J",670,"1985-02-20",1600,300,30),
(755,"doyle","jean","K",671,"1985-04-04",2850,default,30),
(756,"dennis","lynn","S",671,"1985-05-15",2750,default,30),
(757,"baker","leslie","D",671,"1985-06-10",2200,default,40),
(7521,"wark","cynthia","D",670,"1985-02-22",1250,50,30);
select * from employees1;
select first_name,last_name ,salary,comm from employees1;
select employee_id as "ID of the employee",last_name as "name of the employee", department_id as "dep_id"  from employees1;
select first_name,salary from employees1;

select * from employees1 where last_name = "smith";
select last_name,first_name from employees1 where department_id =30;
select first_name from employees1 where salary  between 2000 and 3000;
select first_name from employees1 where department_id = 20 or 30;
select * from employees1 where first_name like "L%";select first_name from employees1 where deartment_id not in (10,30);
select * from employees1 where first_name like "L%" 
and
first_name like  "%e";
select first_name from employees1 where first_name like "J%" and length(4);
select first_name from employees1 where department_id = 30 and salary >2500;
select first_name from employees1 where comm is null;

select employee_id ,last_name  from employees1  order by employee_id ASC;
select employee_id , first_name from employees1 order by salary DESC;
select * from employees1 order by last_name ASC;
select * from employees1 order by last_name ASC;
select * from employees1 order by department_id DESC;

select max(salary),min(salary),avg(salary) ,department_id from employees1
group by department_id;
select max(salary),min(salary),avg(salary), job_id from employees1
group by job_id;
select count(employee_id),month (hiredate) from employees1
group by month (hiredate)
order by month(hiredate) ASC;
select count(employee_id), year(hiredate) from employees1
group by year(hiredate)
order by year(hiredate) ASC;
select count(employee_id) ,department_id from employees1
group by department_id 
having count(employee_id)>=4;
select count(employee_id),month(hiredate) from employees1
where month(hiredate)=2
group by month(hiredate);

