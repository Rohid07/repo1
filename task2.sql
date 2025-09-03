use basic;
create table employee1(emp_id int primary key,name varchar(20) not null,department varchar(20),salary decimal(10,2),city varchar(20));
insert into employee1 values(1,'alice','hr',50000,'new york'),
(2,'bob','it',70000,'san diego'),(3,'charlie','hr',55000,'new york'),
(4,'david','it',80000,'boston'),(5,'eva','finance',60000,'san diego'),
(6,'frank','it',75000,'san jose'),(7,'grace','finance',65000,'new york'),(8,'hannah','hr',52000,'boston');
select * from employee1;
select count(department) from employee1;
select avg(salary) from employee1 where department='hr';
select avg(salary) from employee1 where department='finance';
select avg(salary) from employee1 where department='it';
select * from employee1 order by salary desc;
select * from employee1 order by department asc,salary asc;