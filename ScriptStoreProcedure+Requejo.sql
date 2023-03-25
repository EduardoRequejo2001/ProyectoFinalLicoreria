/*CREACION DE STORE PROCEDURE*/

/*1- sp_insertardatos = Nos permitira Insertar Datos en la tabla Cliente*/
delimiter //
CREATE PROCEDURE sp_insertardatos (in spnombre varchar(50),
   in spapellido varchar(50), 
   in spdireccion varchar(100),
   in spdistrito varchar(50),
   in spedad int,
   in sptelefono varchar(50),
   in spfecha_ingreso date)
BEGIN
      insert into cliente (nombre,apellido,direccion,distrito,edad,telefono,fecha_ingreso)
      values(spnombre,spapellido,spdireccion,spdistrito,spedad,sptelefono,spfecha_ingreso);
END //
delimiter ;

/*Insertaremos los datos a la tabla cliente*/
call sp_InsertarDatos('Eduardo', 'Requejo', 'Apt 251', 'PO Box 92827', 18, '855 714 696', '2022-09-30');

select * from cliente;



/*2- sp_orden_cliente = Nos permitira ordenar(ascendente o descendente) la tabla segun el parametro colocado*/
DELIMITER //
CREATE PROCEDURE sp_orden_cliente (IN campo varchar(40), IN orden varchar(10))
BEGIN
   SET @consulta = CONCAT('SELECT * FROM cliente ORDER BY ', campo, ' ', orden);
   PREPARE stmt FROM @consulta;
   EXECUTE stmt;
   DEALLOCATE PREPARE stmt;
END //

/*Se ordena segun el parametro colocado*/
CALL sp_orden_cliente('nombre', 'ASC');
CALL sp_orden_cliente('direccion', 'DESC');



/*3- sp_eliminar_registro = Nos permitira eliminar un registro(id_cliente)*/
DELIMITER //
CREATE PROCEDURE sp_eliminar_registro(cliente_id int)
BEGIN
   DECLARE cliente_reg INT;
   DECLARE id INT;
     SET cliente_reg = (SELECT count(*)FROM cliente WHERE id_cliente = cliente_id);
IF cliente_reg > 0 THEN 

    DELETE FROM cliente where id_cliente = cliente_id;
    SET id = 1;
    
ELSE

    SET id = 0;
    
END IF;
SELECT id;
END; //
DELIMITER ;

/*Eliminara el registro segun el parametro colocado*/
call sp_eliminar_registro(31);

select * from cliente;