
use basic;
delimiter $$   
create function FullName1 (FirstName varchar(20),LastName varchar(20))
returns varchar (40)
deterministic
begin
     return (concat(firstname,' ',lastname));
end $$

delimiter ;

select FullName1 ('rohid','ravi')as fullname;