delimiter $$

create function buscarpar(num varchar (20))
returns int

Begin
declare siOno boolean;

if num mod 2=0
then set siOno := true;
else set siOno := false;
end if;

return siOno;
End $$

delimiter ;