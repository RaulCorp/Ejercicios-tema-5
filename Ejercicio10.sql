delimiter $$

create function devolverApellido(dni2 varchar(10))
returns varchar (20)

Begin

declare cod char(8);
declare apell char (30);

set cod= (select dat.ClaveEmpleado
from datospersonales dat, empleados emp
where dat.ClaveEmpleado=emp.ClaveEmpleado and dat.DNI=dni2);

set apell= (select Apellidos
from empleados 
where ClaveEmpleado=cod);

return apell;
End $$

delimiter ;