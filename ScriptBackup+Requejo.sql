-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: licoreria
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `distrito` varchar(50) NOT NULL,
  `edad` int NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Collen','Benardeau','Apt 534','PO Box 52974',21,'855 714 898','2022-06-08'),(2,'Ogden','Lorant','20th Floor','7th Floor',68,'321 587 3732','2022-06-11'),(3,'Diandra','Rubinovici','Room 1120','Suite 9',86,'961 368 5633','2022-04-23'),(4,'Rhys','Fligg','Apt 77','14th Floor',89,'134 926 9701','2023-02-12'),(5,'Jenelle','Bissill','20th Floor','Room 1730',69,'194 893 6805','2022-12-22'),(6,'Gavrielle','Whetson','Room 349','Room 188',68,'441 415 0443','2022-10-07'),(7,'Hugibert','Upjohn','Room 1262','Suite 5',20,'417 981 3075','2022-10-18'),(8,'Jody','Cancelier','Room 870','Room 1970',36,'869 395 0320','2022-12-04'),(9,'Ringo','Napolitano','PO Box 89888','Apt 1038',79,'238 215 0741','2022-08-02'),(10,'Marie-jeanne','Naris','Apt 734','Room 701',31,'406 925 2060','2022-06-27'),(11,'Chantal','Bulmer','Suite 28','Room 1697',35,'569 227 7570','2022-10-06'),(12,'Vanda','Duiged','Room 665','Suite 91',92,'272 792 1863','2022-05-14'),(13,'Lewiss','Mohamed','Suite 3','Room 1258',39,'799 761 5513','2022-10-16'),(14,'Witty','Stilly','Suite 100','Suite 7',89,'393 392 2881','2023-01-16'),(15,'Rab','Biddell','PO Box 52209','Suite 1',38,'665 566 9328','2023-03-02'),(16,'Hattie','Touhig','Suite 9','16th Floor',59,'129 818 3941','2022-06-27'),(17,'Baxie','Okill','Suite 66','PO Box 52482',46,'343 872 3137','2022-08-31'),(18,'Kaylyn','Sell','Room 301','Room 1590',31,'816 547 6934','2022-04-06'),(19,'Hunt','Pellew','13th Floor','Room 757',59,'847 918 8424','2023-02-10'),(20,'Desdemona','Toft','PO Box 68116','PO Box 30484',31,'526 157 6152','2022-07-23'),(21,'Pippo','Esparza','Apt 1631','11th Floor',66,'910 981 1373','2022-09-28'),(22,'Boniface','Widdecombe','PO Box 48864','Apt 149',85,'173 355 0823','2022-10-11'),(23,'Fey','Elcombe','Suite 89','Apt 1651',93,'787 216 3349','2022-04-12'),(24,'Nicolea','Shafier','Suite 88','17th Floor',30,'513 908 8426','2022-05-23'),(25,'Georgie','Janouch','8th Floor','10th Floor',100,'625 193 7803','2022-03-26'),(26,'Dur','Betz','Suite 23','PO Box 40379',16,'635 487 9111','2022-05-25'),(27,'Kata','Jozaitis','Apt 819','PO Box 59723',35,'391 284 0580','2023-01-23'),(28,'Harwilll','Puig','PO Box 61235','Room 721',94,'540 938 2660','2022-06-07'),(29,'Tandi','Reeders','PO Box 77138','Apt 1549',57,'509 222 9666','2023-01-09'),(30,'Celinka','Dubbin','Suite 50','PO Box 17569',79,'402 593 2233','2022-10-22'),(32,'Edu','Requejo','Calle W','Santo Domingo',18,'999 727 3238','2023-01-20');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `registrar_Acciones` AFTER INSERT ON `cliente` FOR EACH ROW begin
   
      insert into acciones_de_Registros(accion) value (concat('Se creo un registro cliente con nombre:',New.nombre));
      
   end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


--
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio` (
  `id_envio` int NOT NULL AUTO_INCREMENT,
  `fk_idpedido` int NOT NULL,
  `ciudad_envio` varchar(50) NOT NULL,
  `codigo_postal` int NOT NULL,
  `fecha_envio` date DEFAULT NULL,
  PRIMARY KEY (`id_envio`),
  KEY `fk_idPedido` (`fk_idpedido`),
  CONSTRAINT `fk_idPedido` FOREIGN KEY (`fk_idpedido`) REFERENCES `pedido` (`id_pedido`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
INSERT INTO `envio` VALUES (1,7,'Changle',382,'2023-05-24'),(2,23,'Melbourne',281,'2023-05-30'),(3,1,'Huangbizhuang',331,'2023-05-20'),(4,30,'Dobje pri Planini',269,'2023-04-25'),(5,20,'Ituzaingó',211,'2023-05-26'),(6,10,'Saint-Marcellin',217,'2023-05-20'),(7,30,'Dagushan',434,'2023-04-05'),(8,3,'Inuvik',210,'2023-05-20'),(9,3,'Wanjiazhuang',103,'2023-04-15'),(10,3,'Mende',459,'2023-05-22'),(11,22,'Baiguo',260,'2023-04-10'),(12,27,'Albertville',234,'2023-05-15'),(13,6,'Lomintsevskiy',158,'2023-05-09'),(14,23,'Bamusso',311,'2023-04-29'),(15,20,'Daireaux',258,'2023-05-21'),(16,1,'Weifen',477,'2023-04-21'),(17,3,'Chupa',421,'2023-05-08'),(18,19,'Bektemir',125,'2023-04-03'),(19,19,'Youhua',383,'2023-05-06'),(20,17,'Tabunok',486,'2023-04-06'),(21,9,'Nyrkiv',249,'2023-05-15'),(22,10,'Yangdun',187,'2023-04-17'),(23,21,'Sake',255,'2023-04-21'),(24,27,'Peddie',136,'2023-04-05'),(25,30,'Burgkirchen',325,'2023-04-07'),(26,11,'Jinshan',311,'2023-04-05'),(27,7,'Imeni Tsyurupy',126,'2023-05-27'),(28,8,'Bianba',298,'2023-04-04'),(29,12,'San Juan Pueblo',370,'2023-05-05'),(30,27,'Yuxin',327,'2023-04-24');
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Craggy'),(2,'Lanita'),(3,'Calv'),(4,'Sauveur'),(5,'Gerianna'),(6,'Rebbecca'),(7,'Malvin'),(8,'Bellanca'),(9,'Porter'),(10,'Mia'),(11,'Jacques'),(12,'Glori'),(13,'Vaughan'),(14,'Faina'),(15,'Nedi'),(16,'Karia'),(17,'Abe'),(18,'Abby'),(19,'Law'),(20,'Ban'),(21,'Geralda'),(22,'Daren'),(23,'Breena'),(24,'Drud'),(25,'Jilly'),(26,'Nance'),(27,'Janey'),(28,'Alaric'),(29,'Libby'),(30,'Kylynn');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `fk_idproducto` int NOT NULL,
  `fk_idcliente` int NOT NULL,
  `fecha_pedido` date NOT NULL,
  `total_pedido` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_idCliente` (`fk_idcliente`),
  KEY `fk_idProducto` (`fk_idproducto`),
  CONSTRAINT `fk_idCliente` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idProducto` FOREIGN KEY (`fk_idproducto`) REFERENCES `producto` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,11,12,'2023-02-08',60.00),(2,7,4,'2023-01-08',83.10),(3,19,13,'2023-02-27',96.46),(4,27,23,'2023-03-06',99.28),(5,16,18,'2023-02-15',99.78),(6,23,3,'2023-01-09',64.44),(7,9,9,'2023-02-23',96.12),(8,11,20,'2023-01-31',51.32),(9,2,15,'2023-02-21',78.69),(10,13,22,'2023-03-01',72.45),(11,28,8,'2023-01-12',75.63),(12,30,3,'2023-01-10',79.18),(13,9,15,'2023-02-04',68.53),(14,26,1,'2023-02-06',56.08),(15,23,22,'2023-03-10',79.29),(16,11,21,'2023-01-21',84.47),(17,18,23,'2023-03-12',84.46),(18,5,21,'2023-01-30',55.92),(19,2,15,'2023-03-05',69.97),(20,6,20,'2023-02-23',61.86),(21,13,8,'2023-02-05',69.13),(22,4,13,'2023-03-11',85.35),(23,11,7,'2023-01-09',50.98),(24,5,11,'2023-01-09',63.53),(25,22,4,'2023-01-28',98.06),(26,25,9,'2023-03-12',68.42),(27,12,2,'2023-03-03',84.06),(28,17,2,'2023-02-24',60.23),(29,2,1,'2023-01-21',71.96),(30,17,16,'2023-01-02',75.30);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_actualiza_datos` BEFORE UPDATE ON `pedido` FOR EACH ROW begin
    insert into pedidos_Actualizados (fecha_pedido,total_pedido) values(old.fecha_pedido,old.total_pedido); 
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `fk_idmarca` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_idMarca` (`fk_idmarca`),
  CONSTRAINT `fk_idMarca` FOREIGN KEY (`fk_idmarca`) REFERENCES `marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (2,8,'Risby','Cécilia',923.29,4),(3,6,'Barthorpe','Josée',157.29,27),(4,4,'Hanscome','Adélie',199.36,13),(5,13,'McMickan','Dà',269.05,6),(6,11,'Harsant','Mélanie',539.40,35),(7,24,'Reymers','Chloé',888.38,15),(8,11,'Paull','Cléa',565.35,27),(9,19,'Ocklin','Nadège',940.61,41),(10,10,'Heilds','Béatrice',473.84,18),(11,24,'Greenalf','Maëlla',732.63,42),(12,17,'Passfield','Laurélie',638.76,34),(13,3,'O\'Quin','Publicité',780.40,35),(14,14,'Llorente','Andréanne',988.23,25),(15,2,'Coalbran','Gaétane',595.21,9),(16,4,'Harmar','Anaëlle',139.59,42),(17,22,'Letteresse','Hélène',446.57,50),(18,25,'Angless','Anaïs',858.42,26),(19,4,'Hawkeridge','Maïté',279.04,45),(20,25,'Fechnie','Mylène',218.01,24),(21,16,'Yannoni','Mélia',221.21,16),(22,22,'Redsull','Cloé',154.76,15),(23,13,'Adnams','Lyséa',209.48,29),(24,7,'Nossent','Mégane',132.59,46),(25,29,'Mardell','Maëlla',829.10,46),(26,19,'Farloe','Torbjörn',852.03,15),(27,30,'Axtell','Ophélie',421.58,11),(28,18,'Chartres','Anaé',628.97,37),(29,15,'Seide','Gösta',836.50,3),(30,13,'Franzke','Eléa',837.71,45),(31,27,'Lamasna','Renée',295.46,30);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Riccardo','7th Floor','782 246 4623'),(2,'Cristionna','Room 21','472 558 8828'),(3,'Elysee','PO Box 72188','230 739 0795'),(4,'Rosmunda','16th Floor','250 863 4875'),(5,'Genny','12th Floor','864 619 3038'),(6,'Therine','Suite 67','213 453 7659'),(7,'Dalston','Apt 1435','141 634 9996'),(8,'Janeczka','3rd Floor','129 824 7841'),(9,'Bekki','Suite 34','767 265 1769'),(10,'Selena','Apt 1190','355 139 1213'),(11,'Sherlock','19th Floor','765 777 1571'),(12,'Way','Suite 5','332 860 0219'),(13,'Mohandis','Apt 1480','994 801 9897'),(14,'Jolee','Suite 68','345 710 8024'),(15,'Devlin','Suite 74','354 225 4581'),(16,'Rani','18th Floor','382 176 5401'),(17,'Wanda','Suite 5','590 820 7395'),(18,'Liza','PO Box 14599','210 415 7020'),(19,'Adda','PO Box 54832','698 424 8300'),(20,'Ingaberg','3rd Floor','264 767 0279'),(21,'Marylynne','Suite 86','426 838 3995'),(22,'Sena','20th Floor','216 606 8197'),(23,'Devina','Apt 442','651 798 4549'),(24,'Heidi','PO Box 88795','931 816 4850'),(25,'Shalna','Suite 56','857 855 7740'),(26,'Ezekiel','PO Box 1829','208 859 8384'),(27,'Paula','Room 1436','195 137 8132'),(28,'Dulciana','Apt 600','382 170 2731'),(29,'Maryann','Room 839','242 180 6638'),(30,'Any','PO Box 71431','945 197 5282');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


--
-- Table structure for table `acciones_de_registros`
--

DROP TABLE IF EXISTS `acciones_de_registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acciones_de_registros` (
  `id_accion` int NOT NULL AUTO_INCREMENT,
  `accion` varchar(50) NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_accion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acciones_de_registros`
--

LOCK TABLES `acciones_de_registros` WRITE;
/*!40000 ALTER TABLE `acciones_de_registros` DISABLE KEYS */;
INSERT INTO `acciones_de_registros` VALUES (1,'Se creo un registro cliente con nombre:Edu','2023-03-25 13:03:24');
/*!40000 ALTER TABLE `acciones_de_registros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


--
-- Table structure for table `pedidos_actualizados`
--

DROP TABLE IF EXISTS `pedidos_actualizados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos_actualizados` (
  `id_pedAct` int NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date DEFAULT NULL,
  `total_pedido` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedAct`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos_actualizados`
--

LOCK TABLES `pedidos_actualizados` WRITE;
/*!40000 ALTER TABLE `pedidos_actualizados` DISABLE KEYS */;
INSERT INTO `pedidos_actualizados` VALUES (1,'2023-02-07',59.32),(2,'2023-01-07',82.62);
/*!40000 ALTER TABLE `pedidos_actualizados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


--
-- Temporary view structure for view `orden_cliente`
--

DROP TABLE IF EXISTS `orden_cliente`;
/*!50001 DROP VIEW IF EXISTS `orden_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orden_cliente` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listado_precios`
--

DROP TABLE IF EXISTS `listado_precios`;
/*!50001 DROP VIEW IF EXISTS `listado_precios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listado_precios` AS SELECT 
 1 AS `nombre`,
 1 AS `precio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_pedido`
--

DROP TABLE IF EXISTS `lista_pedido`;
/*!50001 DROP VIEW IF EXISTS `lista_pedido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_pedido` AS SELECT 
 1 AS `id_pedido`,
 1 AS `fk_idproducto`,
 1 AS `fk_idcliente`,
 1 AS `fecha_pedido`,
 1 AS `total_pedido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_cliente`
--

DROP TABLE IF EXISTS `vista_cliente`;
/*!50001 DROP VIEW IF EXISTS `vista_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_cliente` AS SELECT 
 1 AS `nombre`,
 1 AS `distrito`,
 1 AS `edad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_cantidad`
--

DROP TABLE IF EXISTS `lista_cantidad`;
/*!50001 DROP VIEW IF EXISTS `lista_cantidad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_cantidad` AS SELECT 
 1 AS `nombre`,
 1 AS `descripcion`,
 1 AS `cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_marca`
--

DROP TABLE IF EXISTS `vista_marca`;
/*!50001 DROP VIEW IF EXISTS `vista_marca`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_marca` AS SELECT 
 1 AS `id_marca`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `orden_envio`
--

DROP TABLE IF EXISTS `orden_envio`;
/*!50001 DROP VIEW IF EXISTS `orden_envio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orden_envio` AS SELECT 
 1 AS `ciudad_envio`,
 1 AS `fecha_envio`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `orden_cliente`
--

/*!50001 DROP VIEW IF EXISTS `orden_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orden_cliente` AS select `cliente`.`nombre` AS `nombre`,`cliente`.`apellido` AS `apellido` from `cliente` order by `cliente`.`apellido` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listado_precios`
--

/*!50001 DROP VIEW IF EXISTS `listado_precios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listado_precios` AS select `producto`.`nombre` AS `nombre`,`producto`.`precio` AS `precio` from `producto` where (`producto`.`precio` > 300) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_pedido`
--

/*!50001 DROP VIEW IF EXISTS `lista_pedido`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_pedido` AS select `pedido`.`id_pedido` AS `id_pedido`,`pedido`.`fk_idproducto` AS `fk_idproducto`,`pedido`.`fk_idcliente` AS `fk_idcliente`,`pedido`.`fecha_pedido` AS `fecha_pedido`,`pedido`.`total_pedido` AS `total_pedido` from `pedido` where (`pedido`.`total_pedido` < 60) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vista_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_cliente` AS select `cliente`.`nombre` AS `nombre`,`cliente`.`distrito` AS `distrito`,`cliente`.`edad` AS `edad` from `cliente` where (`cliente`.`distrito` like '%Room%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_cantidad`
--

/*!50001 DROP VIEW IF EXISTS `lista_cantidad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_cantidad` AS select `producto`.`nombre` AS `nombre`,`producto`.`descripcion` AS `descripcion`,`producto`.`cantidad` AS `cantidad` from `producto` where (`producto`.`cantidad` > 15) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_marca`
--

/*!50001 DROP VIEW IF EXISTS `vista_marca`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_marca` AS select `marca`.`id_marca` AS `id_marca`,`marca`.`nombre` AS `nombre` from `marca` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orden_envio`
--

/*!50001 DROP VIEW IF EXISTS `orden_envio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orden_envio` AS select `envio`.`ciudad_envio` AS `ciudad_envio`,`envio`.`fecha_envio` AS `fecha_envio` from `envio` order by `envio`.`ciudad_envio` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'licoreria'
--
/*!50003 DROP FUNCTION IF EXISTS `numero_de_letra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `numero_de_letra`(letra CHAR) RETURNS int
    NO SQL
begin
     DECLARE numero int;
     
	 SELECT count(*) INTO numero FROM cliente WHERE nombre like concat('%',letra,'%');
     
     RETURN numero;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `o_datos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `o_datos`(id INT) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE resultado varchar(255);
    DECLARE apellido_cliente varchar(50);
    DECLARE nombre_producto varchar(50);
    
    SELECT apellido INTO apellido_cliente FROM cliente WHERE id_cliente = id;
    SELECT nombre INTO nombre_producto FROM producto WHERE id_producto = id;
    
    SET resultado = CONCAT(apellido_cliente, ' ',  nombre_producto);
    RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminar_registro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_registro`(cliente_id int)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertardatos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertardatos`(in spnombre varchar(50),
   in spapellido varchar(50), 
   in spdireccion varchar(100),
   in spdistrito varchar(50),
   in spedad int,
   in sptelefono varchar(50),
   in spfecha_ingreso date)
BEGIN
      insert into cliente (nombre,apellido,direccion,distrito,edad,telefono,fecha_ingreso)
      values(spnombre,spapellido,spdireccion,spdistrito,spedad,sptelefono,spfecha_ingreso);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_orden_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_orden_cliente`(IN campo varchar(40), IN orden varchar(10))
BEGIN
   SET @consulta = CONCAT('SELECT * FROM cliente ORDER BY ', campo, ' ', orden);
   PREPARE stmt FROM @consulta;
   EXECUTE stmt;
   DEALLOCATE PREPARE stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2023-04-12 17:46:30