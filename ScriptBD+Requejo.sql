Create Schema licoreria;

use licoreria;

create table cliente(
     id_cliente int not null auto_increment primary key,
     nombre varchar(50) not null,
     apellido varchar(50) not null,
     direccion varchar(100) not null,
     distrito varchar(50) not null,
     edad int not null,
     telefono varchar(50) not null,
     fecha_ingreso date not null
);


create table proveedor (
    id_proveedor int not null auto_increment primary key,
	nombre varchar(50) not null,
	direccion varchar(50) not null,
	telefono varchar(50) not null
);


create table pedido(
     id_pedido int not null auto_increment primary key,
     fecha_pedido date not null,
     total_pedido decimal(10,2)
);


create table envio (
  id_envio int not null auto_increment primary key,
  ciudad_envio varchar(50) not null,
  codigo_postal int not null,
  fecha_envio date
);


create table producto(
  id_producto int not null auto_increment primary key,
  nombre varchar(50) not null,
  descripcion varchar(50) not null,
  precio decimal(10,2) not null,
  cantidad int not null
);


create table marca(
id_marca int primary key auto_increment,
nombre varchar(50) not null
);


create table acciones_de_Registros(
id_accion int primary key auto_increment,
accion varchar(50) not null,
fecha datetime null default current_timestamp
);


create table pedidos_Actualizados(
id_pedAct int primary key auto_increment,
fecha_pedido date,
total_pedido decimal(10,2)
);



/*ALTERACION A LA TABLA PEDIDO PARA AGREGAR LA RELACION DEL ID DEL CLIENTE*/
alter table pedido add column fk_idcliente int not null after id_pedido;

alter table pedido add constraint fk_idCliente foreign key (fk_idcliente)
references cliente (id_cliente) on delete cascade on update cascade;



/*ALTERACION DE TABLAS PARA AGREGAR LOS FOREIGN KEY*/
alter table pedido add column fk_idproducto int not null after id_pedido;

alter table pedido add constraint fk_idProducto foreign key (fk_idproducto)
references producto (id_producto) on delete cascade on update cascade;



/*ALTERACION DE TABLAS PARA AGREGAR LOS FOREIGN KEY*/
alter table producto add column fk_idmarca int not null after id_producto;

alter table producto add constraint fk_idMarca foreign key (fk_idmarca)
references marca (id_marca) on delete cascade on update cascade;



/*ALTERACION DE TABLAS PARA AGREGAR LOS FOREIGN KEY*/
alter table envio add column fk_idpedido int not null after id_envio;

alter table envio add constraint fk_idPedido foreign key (fk_idpedido)
references pedido (id_pedido) on delete cascade on update cascade;