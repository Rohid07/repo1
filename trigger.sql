use basic;
 select * from employee;
 -- trigger --
 create table update_employeedetails(
 empid int,
 name varchar(20),
 contact bigint,
 oldsalary decimal(10,2),
 newsalary decimal(10,2),
 dateandtime datetime);

 
 delimiter $$
 create trigger update_trigger
 after update
 on employee 
 for each row
 begin
  insert into update_employeedetails
  values(old.emp_id,old.name,old.contact,old.salary,new.salary,now());
  end $$
delimiter ;
update employee set salary = salary+10001;
select * from update_employeedetails;
drop trigger update_trigger;