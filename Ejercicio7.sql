delimiter $$

create procedure diaSemana(in num integer (1))

Begin

declare dia varchar (20);

case
	when num=1 then set dia:= 'Lunes';
    when num=2 then set dia:= 'Martes';
    when num=3 then set dia:= 'Miercoles';
    when num=4 then set dia:= 'Jueves';
    when num=5 then set dia:= 'Viernes';
    when num=6 then set dia:= 'Sabado';
    when num=7 then set dia:= 'Domingo';
		Else set dia:='Mal, muy mal';
end case;

select dia;

End $$

delimiter ;