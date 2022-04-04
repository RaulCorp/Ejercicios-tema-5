delimiter $$

create procedure SacarDni( in codigo char(8))
Begin

declare dni2 varchar (10);
set dni2 =(
    select DNI
    from datospersonales
    where codigo=ClaveEmpleado
);

Select dni2

End $$
delimiter ;