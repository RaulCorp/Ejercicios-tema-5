delimiter $$

create function suma (num1 int,num2 int)
returns int

Begin
declare suma int;
set suma = num1 + num2;
return suma;

End $$
delimiter ;