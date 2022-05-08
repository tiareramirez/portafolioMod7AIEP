# ejercicio2

select rut, char_length(rut) as largo_rut
from public.usuario;
select nombre, char_length(nombre) as largo_nombre
from public.usuario;
select apellido, char_length(apellido) as largo_apellido
from public.usuario;
select apellido, char_length(apellido) as largo_apellido, edad
from public.usuario;


select lower(nombre) as minusculas
from public.usuario;
select lower(apellido) as minusculas
from public.usuario;
select lower(substring(apellido, 1 ,3)) as apellido_minusculas
from public.usuario;
select lower(substring(nombre, 1 ,3)) as nombre_minusculas
from public.usuario;


select upper(nombre) as mayusculas
from public.usuario;
select upper(apellido) as mayusculas
from public.usuario;
select upper(substring(apellido, 1 ,3)) as apellido_mayusculas
from public.usuario;
select upper(substring(nombre, 1 ,3)) as nombre_mayusculas
from public.usuario;


select substring(rut, 1, 3) as rut
from public.usuario;
select substring(rut, 5,5) as digito
from public.usuario;
select substring(nombre, 1,3) as nombre
from public.usuario;
select substring(apellido, 1,3) as apellido
from public.usuario;






