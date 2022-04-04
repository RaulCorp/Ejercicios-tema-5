delimiter $$

create procedure actualizarfecha(in nombredep char (30))

Begin

declare fecha date;
declare mensaje varchar (2);

set fecha = (select min(fechaAlta)
from datospersonales dat, departamento dep, empleados emp
where dat.ClaveEmpleado=emp.ClaveEmpleado and emp.ClaveDepartamento= dep.ClaveDepartamento and dep.nombre=nombredep);

update datospersonales set FechaAlta='2022-04-02' where FechaAlta=fecha;

set mensaje := 'OK';

return mensaje;
End $$

delimiter ;

