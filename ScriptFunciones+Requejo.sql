/*CREACION DE FUNCIONES*/

/*1- numero_letra = Me mostrara la cantidad nombres que conlleven dicha letra seleccionada*/
DELIMITER //
CREATE FUNCTION numero_de_letra (letra CHAR) RETURNS INT
NO SQL
begin
     DECLARE numero int;
     
	 SELECT count(*) INTO numero FROM cliente WHERE nombre like concat('%',letra,'%');
     
     RETURN numero;
end;

/*Me muestra la cantidad de nombres de los clientes con letra 'a'*/
SELECT numero_de_letra('a');
/*Me muestra las primeras letras de cada nombre del cliente*/
SELECT LEFT(nombre,1) FROM cliente;



/*2- NOS PERMITE CONCATENAR DIFERENTES TABLAS(SELECT,INTO,FROM,WHERE)*/
DELIMITER //
CREATE FUNCTION o_datos (id INT) RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE resultado varchar(255);
    DECLARE apellido_cliente varchar(50);
    DECLARE nombre_producto varchar(50);
    
    SELECT apellido INTO apellido_cliente FROM cliente WHERE id_cliente = id;
    SELECT nombre INTO nombre_producto FROM producto WHERE id_producto = id;
    
    SET resultado = CONCAT(apellido_cliente, ',',  nombre_producto);
    RETURN resultado;
END;

/*Nos muestra los datos segun el parametro colocado*/
SELECT o_datos(30);