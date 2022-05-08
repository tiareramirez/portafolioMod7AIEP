
insert into civil(cod_estado, estado)
values
('#01','CAS'),
('#02', 'SOL'),
('#03', 'DIV'),
('#04', 'VIU');

select * from civil;

insert into genero(cod_gen, estado)
values 
('#01','M'),
('#02', 'F'),
('#03', 'O');

select * from genero;

insert into pueblo(nacionalidad)
values 
('mapuche'),
('aymara'),
('chileno'),
('otro');

select * from pueblo; 

insert into region(nombre)
values
('RM'),
('R4'),
('R9'),
('R10');

select * from region;

insert into comuna(cod_comuna, nombre)
values 
('c001','Est Central'),
('c002', 'La Serena'),
('c003', 'Maipu'),
('c004', 'Temuco'),
('c005', 'Puerto Montt'),
('c006', 'Pudahuel'),
('c007', 'San Miguel');

select * from comuna;

insert into nac(cod_nac, nombre)
values
('c001','Chilena'),
('c002', 'Venezolana'),
('c003', 'Estado Unidense'),
('c004', 'Peruana'),
('c005', 'Colombiana');

select * from nac;

insert into persona
values
('111-1', 'Juan', 'Antonio', 'Perez', 'Garcez', '#01', '#01', '10/10/1985', 3),
('222-2', 'Mario', 'Alonso', 'Robles', 'Moya', '#01', '#01', '20/01/1978', 3),
('333-3', 'Maria', 'Antonieta', 'Villa', 'Oter', '#02', '#02', '15/06/1992', 1),
('444-4', 'Ignacio', 'Esteban', 'Super', 'Lizana', '#02', '#03', '09/03/1990', 2),
('555-5', 'Camila', 'Eliana', 'Cabello', 'Soto', '#03', '#03', '12/10/1987', 3);

/*('111-1', 'Juan', 'Antonio', 'Perez', 'Garcez', '#0jaskkh', '#0hasska', '10/10/1985', 3)*/

select * from persona;


insert into direccion(calle, numero, cod_comuna, id_region, rut)
values
('El Sol', 77, 'c001', 1, '111-1'),
('La Luna', 88, 'c002', 2, '222-2'),
('La Sal', 10, 'c003', 1, '333-3'),
('El Árbol', 13, 'c004', 3, '444-4'),
('Los Botes', 50, 'c005', 4, '555-5'),
('El Azúcar', 77, 'c006', 1, '333-3'),
('El Orégano', 90, 'c007', 1, '333-3'),
('La Lluvia', 88, 'c004', 3, '444-4');

select * from direccion;


insert into nacionalidad(cod_nac, rut)
values
('c001', '111-1'),
('c001', '333-3'),
('c002', '222-2'),
('c002', '333-3'),
('c003', '333-3'),
('c004', '555-5'),
('c001', '555-5'),
('c005', '444-4');

select * from nacionalidad;

insert into fono(telefono, rut)
values
('133', '111-1'),
('199', '222-2'),
('189', '333-3'),
('111', '444-4'),
('333', '555-5'),
('134', '111-1'),
('135', '111-1'),
('138', '111-1'),
('170', '333-3'),
('444', '555-5');

select * from fono;

insert into correo(mail, rut)
values
('ja@a.cl ', '111-1'),
('mr@r.cl', '222-2'),
('ma@j.cl ', '333-3'),
('is@s.cl', '444-4'),
('cc@c.cl', '555-5'),
('jb@b.cl', '111-1'),
('mav@j.cl', '333-3'),
('ccs@c.cl ', '555-5'),
('cse@e.cl', '555-5');

select * from correo;

/********/

/*consultar*/
select * from civil;
select * from comuna;
select * from correo;
select * from direccion;
select * from fono;
select * from genero;
select * from nac;
select * from nacionalidad;
select * from persona;
select * from pueblo;
select * from region;

/*modificar*/
update persona
set nombre1 = 'Mariana', fecha_nacimiento = '06/12/1982'
where rut = '333-3'

/*eliminar todo el registo*/
/*eliminar persona con rut 555-5 */

delete from correo
where rut = '555-5';

delete from direccion
where rut = '555-5';

delete from fono
where rut = '555-5';

delete from nacionalidad
where rut = '555-5';

delete from persona
where rut = '555-5';

/*Borrar todos los registros de las tablas*/
delete from dirección;
delete from comuna;
delete from region;
delete from nacionalidad;
delete from nac;
delete from correo;
delete from fono;
delete from persona;
delete from genero;
delete from civil;
delete from pueblo;

/*para comenzar una acción*/
begin;

/*Vaciar las tablas y reinicio de identity*/
truncate table dirección restart identity cascade;
truncate table comuna cascade;
truncate table region restart identity cascade;
truncate table nacionalidad restart identity cascade;
truncate table nac cascade;
truncate table correo restart identity cascade;
truncate table fono restart identity cascade;
truncate table persona cascade;
truncate table genero cascade;
truncate table civil cascade;
truncate table pueblo restart identity cascade;

/*para terminar una acción*/
commit;

/*para desahecr o volver atrás en una acción*/
rollback; 

/*consulta aninada*/
/*nombre1, apellido1, estado*/
select nombre1, apellido1, cod_gen from persona;


select persona.nombre1, persona.apellido1, genero.estado
from persona
inner join genero
on persona.cod_gen = genero.cod_gen
where persona.rut = '333-3'

/*nombre1, ambos apellidos y los fonos*/
select persona.nombre1, persona.apellido1, persona.apellido2, fono.telefono
from persona
inner join fono
on persona.rut = fono.rut
where persona.rut = '111-1'



/*inner join*/
select * from persona;
select * from pueblo;

select *
from persona
inner join pueblo
on persona.id_pueblo = pueblo.id

insert into persona
values
('999-9', 'Maria', 'Andrea', 'Ríos', 'Castillo', '#01', '#01', '10/09/1988', null);

select *
from persona
left join pueblo
on persona.id_pueblo = pueblo.id