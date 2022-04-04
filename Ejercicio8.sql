delimiter $$

create function radio1(radio int)
returns float

Begin
declare area float;

set area = 3.14*radio*radio;

return area;
End $$

delimiter ;