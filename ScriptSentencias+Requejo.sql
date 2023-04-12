/*EJERCICIO 1*/
create user usuario@localhost identified by '123';

/*USUARIO QUE NOS PERMITE LA LECTURA*/
GRANT SELECT ON *.* TO 'usuario'@'localhost';

select * from mysql.user WHERE user like 'usuario%';

/*EJERCICIO 2*/
create user usuario2@localhost identified by '12345';

/*USUARIO QUE NOS PERMITIRA  LA LECTURA, INSERCION Y MOFICACION*/
GRANT SELECT, INSERT, UPDATE ON *.*
TO 'usuario2'@'localhost';

select * from mysql.user WHERE user like 'usuario2%';