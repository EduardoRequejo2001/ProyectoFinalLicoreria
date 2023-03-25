/*CREACION DE VISTAS*/

/*1- VISTA CLIENTE QUE NOS PERMITE VISUALIZAR NOMBRE,DISTRITO,EDAD ESPECIFICANDO SOLO EL DISTRITO*/
CREATE VIEW vista_cliente AS
(SELECT nombre, distrito, edad
FROM cliente
WHERE distrito like '%Room%');
    
select * from vista_cliente;


/*2- VISTA CLIENTE QUE NOS PERMITE IDENTIFICAR A LOS CLIENTES EN ORDEN ASCENDENTE MEDIANTE SU APELLIDO*/
CREATE VIEW orden_cliente AS 
(SELECT nombre, apellido 
FROM cliente
ORDER BY apellido ASC);

select * from orden_cliente;


/*3- VISTA PRODUCTO QUE NOS MUESTRA LOS PRECIOS SUPERIORES A 300*/
CREATE VIEW listado_precios AS
(SELECT nombre, precio
FROM producto
WHERE precio > 300);

select * from  listado_precios;

/*4- VISTA ENVIO QUE NOS PERMITE IDENTIFICAR EL ENVIO EN ORDEN DESCENDENTE MEDIANTE LA CIUDAD DE ENVIO*/
CREATE VIEW orden_envio AS
(SELECT ciudad_envio,fecha_envio
FROM envio
ORDER BY ciudad_envio DESC);
    
select * from orden_envio;


/*5- VISTA MARCA QUE NOS MUESTRA LOS DATOS DE LA TABLA*/
CREATE VIEW vista_marca AS
(SELECT * FROM marca);
    
select * from vista_marca;


/*6- VISTA PEDIDO QUE NOS MUESTRA EL MONTO TOTAL DE LOS PEDIDOS MENORES A 60*/
CREATE VIEW lista_pedido AS
(SELECT * FROM pedido
WHERE total_pedido < 60);
    
select * from lista_pedido;


/*7- VISTA PRODUCTO QUE NOS MUESTRA LA CANTIDAD DE PRODUCTOS SUPERIORES A 15*/
CREATE VIEW lista_cantidad AS
(SELECT nombre,descripcion,cantidad
FROM producto
WHERE cantidad > 15);
    
select * from lista_cantidad;



/*SELECTS A UTILIZAR EN CADA VISTA*/
select * from vista_cliente;
select * from orden_cliente;
select * from  listado_precios;
select * from orden_envio;
select * from vista_marca;
select * from lista_pedido;
select * from lista_cantidad;