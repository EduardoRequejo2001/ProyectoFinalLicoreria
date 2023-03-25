/*CREACION DE TRIGGERS*/

/*1.-Trigger para visualizar el registro de un cliente(accion,fecha) - Se utilizo AFTER*/
delimiter //
create trigger registrar_Acciones after insert on cliente
   for each row begin
   
      insert into acciones_de_Registros(accion) value (concat('Se creo un registro cliente con nombre:',New.nombre));
      
   end//
delimiter ;

/*la seleccion para visualizar los registros*/
select * from licoreria.acciones_de_Registros;



/*2.-Trigger para Actualizar Datos de un Tabla - Se utilizo BEFORE*/
delimiter //
create trigger tr_actualiza_datos 
   before update 
     on pedido
   for each row 
begin
    insert into pedidos_Actualizados (fecha_pedido,total_pedido) values(old.fecha_pedido,old.total_pedido); 
end;

/*Actualizamos los datos de la tabla seleccionada*/
update pedido set fecha_pedido='2023-02-08' ,total_pedido='60.00' where id_pedido=1;
update pedido set fecha_pedido='2023-01-08' ,total_pedido='83.10' where id_pedido=2;

/*la seleccion para visualizar la actualizacion de datos*/
select * from licoreria.pedidos_Actualizados;