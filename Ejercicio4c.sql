delimiter $$

create function NumeroEmpleados2(depar varchar (20))
returns int

Begin
declare numero int;

set numero =(
select count(e.ClaveEmpleado)
from empleados e, departamento d
where e.ClaveDepartamento=d.ClaveDepartamento and d.Nombre= depar);

return numero;
End $$

delimiter ;