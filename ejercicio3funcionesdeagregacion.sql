# ejercicio3

promedio de edades
select avg(edad) as "promedio_edades"
from public.usuario;

select count(edad) as "cuenta_edades"
from public.usuario;

select max(edad) as "max_edades"
from public.usuario;

select min(edad) as "min_edades"
from public.usuario;

select sum(edad) as "suma_edades"
from public.usuario;