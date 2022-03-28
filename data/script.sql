/* create database tienda;
use tienda; */
create table clientes(
	id int auto_increment,
    nombre varchar(255),
    direccion varchar(255),
    telefono varchar(15),
    primary key(id));

create table productos(
   id int,
   nombre varchar(255),
   precio decimal(7,2),
   primary key(id));
   
create table pedidos(
   id int auto_increment,
   numero int,
   id_cliente int,
   fecha_creacion datetime,
   fecha_entrega datetime,
   primary key(id),
   foreign key (id_cliente) references clientes(id));
   
create table items(
   id int auto_increment,
   pedido_id int,
   producto_id int,
   cantidad int,
   precio_unitario decimal(7,2),
   primary key(id),
   foreign key (pedido_id) references pedidos(id),
   foreign key (producto_id) references productos(id));
   
   