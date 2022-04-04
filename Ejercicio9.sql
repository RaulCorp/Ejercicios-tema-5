delimiter $$

create function nummayor(num1 int, num2 int, num3 int)
returns int

Begin
declare mayor int;

if num1 > num2 and num1 >num3 then set mayor := num1;
elseif num2 > num1 and num2 > num3 then set mayor := num2;
else set mayor := num3;

end if;

return mayor;
End $$

delimiter ;