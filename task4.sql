use basic;
select * from employee;
delimiter $$
create procedure updatedepartment(in empid int,in newdepartment varchar(50),out message varchar(50))
begin
    declare currentdepartment varchar(30);
    select department into currentdepartment from employee where emp_id=empid;
    if newdepartment != currentdepartment then
    update employee set department=newdepartment where emp_id=empid;
    set message ='department changed successfully';
    else
    set message ='no changes in the department';
    end if;
    end $$
delimiter ;
set @msg='';
call updatedepartment(3,'test',@msg);
select @msg as department_update_status;
select * from employee;
    