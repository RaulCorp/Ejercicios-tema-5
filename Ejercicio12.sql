delimiter $$

create procedure notas(in num integer)

Begin

declare nota varchar (15);

case
when num between 0 and 4.9 then set nota:= 'Insuficiente';
when num between 5 and 5.9 then set nota:= 'Suficiente';
when num between 6 and 6.9 then set nota:= 'Bien';
when num between 7 and 8.9 then set nota:= 'Notable';
when num between 9 and 10 then set nota:= 'Sobresaliente';
else set nota:= 'Nota mal introducida';

end case;

select nota;
End $$

delimiter ;