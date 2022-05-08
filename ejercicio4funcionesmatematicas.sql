# ejercicio4

retorna valor absoluto de x
select abs(edad) 
from public.usuario limit 1;

retorna el valor entero mayor a x
select ceil(edad) 
from public.usuario;

select max(edad) as "max_edades"
from public.usuario;

select min(edad) as "min_edades"
from public.usuario;

select sum(edad) as "suma_edades"
from public.usuario;