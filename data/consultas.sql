select * from clientes;
insert into clientes (nombre,direccion,telefono)
values ('Armando','Los Olivos 234','234-678');

insert into clientes (nombre,direccion,telefono)
values ('Ramon','Las perolas 334','934-678');

insert into clientes (nombre,direccion,telefono)
values ('Maria','Los Flores 564','784-678');

delete from clientes where id=10;
update clientes set telefono='234-679' where id=9;

select * from clientes where id=1;
select id,nombre from clientes where id=1;
select * from clientes where id in(1,2,3,4);
select * from clientes where nombre ='Armando';

alter table clientes
add column edad int;

select * from clientes where edad>18;
select * from clientes where edad<=18;
select * from clientes where edad between 40 and 56;
select * from clientes where direccion like '%Los Flores%';
select * from clientes where nombre like 'M%';
select * from clientes where nombre like '__n%';
select count(*) from clientes;
select sum(edad) from clientes;
select avg(edad) from clientes;
select max(edad) from clientes;
select min(edad) from clientes;

select * from clientes where edad =
(select max(edad) from clientes);

select * from clientes where edad =
(select min(edad) from clientes)

