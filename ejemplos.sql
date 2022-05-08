# ejemplos

select nombre, char_length(nombre) as largo_nombre, edad
from public.usuario;

select lower(nombre) as minusculas, upper(nombre) as mayusculas
from public.usuario;

select substring(rut, 1, 3) as rut, substring(rut, 5,5) as digito
from public.usuario;

select * from public.usuario
where edad < 30;

promedio de edades
select avg(edad) as "promedio_edades"
from public.usuario;

cuenta los registros
select count(edad) 
from public.usuario;

trae el numero máximo
select max(edad) 
from public.usuario;

trae el numero minimo
select min(edad) 
from public.usuario;

trae la suma de la columna
select sum(edad) 
from public.usuario;

