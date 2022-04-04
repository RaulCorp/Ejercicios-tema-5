delimiter $$

create procedure fechaMinima()

Begin

declare fecha date;

set fecha=(
select min(dat.FechaAlta)
from datospersonales dat, empleados emp, departamento dep
where dat.ClaveEmpleado=emp.ClaveEmpleado and 
emp.clavedepartamento=dep.clavedepartamento and
dep.nombre='Personal');

select fecha;

End $$

delimiter ;