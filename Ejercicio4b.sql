delimiter $$

create function NumeroEmpleados()
returns int

Begin
declare numero int;
set numero =(
select count(e.ClaveEmpleado)
from empleados e, departamento d
where e.ClaveDepartamento=d.ClaveDepartamento and d.Nombre= 'Personal');

return numero;
End $$

delimiter ;