/*TCL*/
use licoreria1;
select * from cliente;

/*PRIMERA TABLA == ELIMINACION DE REGISTRO*/
START TRANSACTION;

DELETE FROM cliente
  WHERE 
      id = 3;

SELECT * FROM cliente
  order by id
  limit 5;
  
  
/*NOS PERMITE REVOCAR LA ELIMINACION DE LOS REGISTROS*/
ROLLBACK;

/*NOS PERMITE FINALIZAR LA TRANSACCION*/
COMMIT;



/*SEGUNDA TABLA == INSERCION DE DATOS MEDIANTE START TRANSACTION*/

/*INSERCION DE DATOS USANDO SAVEPOINT(SEPARACION POR LOTES)*/
START TRANSACTION;

INSERT INTO marca (nombre) VALUES ('Whisky');
INSERT INTO marca (nombre) VALUES ('Whisky');
INSERT INTO marca (nombre) VALUES ('Tequila');
INSERT INTO marca (nombre) VALUES ('Pisco');
savepoint lote_1;
INSERT INTO marca (nombre) VALUES ('Pisco');
INSERT INTO marca (nombre) VALUES ('Cerveza');
INSERT INTO marca (nombre) VALUES ('Tequila');
INSERT INTO marca (nombre) VALUES ('Cerveza');
savepoint lote_2;


select * from marca;


/*NOS PERMITE REVOCAR LA INSERCION DE LOS REGISTROS*/
ROLLBACK;

/*NOS PERMITE LA ELIMINACION DE LOS REGISTROS INSERTADOS EN EL LOTE(savepoint)*/
RELEASE savepoint lote_1;