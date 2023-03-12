CREATE DATABASE Velvet; 
use Velvet; 

CREATE TABLE `cakes` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `sabor` varchar(100) NOT NULL, 
  `precio` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 

INSERT INTO `cakes` VALUES 
(1,'Queque de Zanahoria', '₡5,000', 'Un delicioso queque de zanahoria preparado con los ingredientes más frescos'),
(2,'Queque Marmoleado','₡6,000', 'Una deliciosa combinación de Queque Tradicional y Queque de Chocolate'),
(3,'Queque Tradicional','₡4,000', 'El tradicional, pero no te dejes engañar, igual de delicioso'),
(4,'Queque de Chocolate','₡5,000', 'Un delicioso queque preparado a base de chocolate oscuro'),
(5,'Queque relleno de Crema y Frambuesa','₡5,000', 'Deliciosa combinación de crema y frambuesa en nuestro queque tradicional');

CREATE TABLE `tablaCakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cakes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`cakes_id`),
  KEY `fk_tablaCakes_cakes_idx` (`cakes_id`),
  CONSTRAINT `fk_tablaCakes_cakes` FOREIGN KEY (`cakes_id`) REFERENCES `cakes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
  ) ;
 /* `fecha` varchar(100) NOT NULL,
  `costo` varchar(45) NOT NULL,
  `capacidad` varchar(45) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,*/
  

INSERT INTO `tablaCakes` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
  
 /* PRIMARY KEY (`id`,`cakes_id`),
  KEY `fk_tablacakes_cakes_idx` (`cakes_id`),
  CONSTRAINT `fk_tablacakes_cakes` FOREIGN KEY (`cakes_id`) REFERENCES `cakes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
  ) ;

INSERT INTO `conciertos` VALUES (1,1,'Marzo 10','45.000','120,000 Personas','Parque Viva');
INSERT INTO `conciertos` VALUES (2,2,'Marzo 11','50.000','120,000 Personas','Parque Viva');
INSERT INTO `conciertos` VALUES (3,3,'Marzo 12','35.000','120,000 Personas','Parque Viva');
INSERT INTO `conciertos` VALUES (4,4,'Marzo 13','30.000','120,000 Personas','Parque Viva');
INSERT INTO `conciertos` VALUES (5,5,'Marzo 14','55.000','120,000 Personas','Parque Viva');







CREATE TABLE `snacks` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `sabor` varchar(100) NOT NULL, 
  `precio` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 

INSERT INTO `snacks` VALUES (1,'Cafe Tacvba'),(2,'Los Fabulosos Cadilacs'),(3,'Los Rabanes'),(4,'Mana'),(5,'Pitbull');

CREATE TABLE `locations` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `ubicacion` varchar(100) NOT NULL, 
  `telefono` varchar(100) NOT NULL,
  `horario` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 

INSERT INTO `locations` VALUES (1,'Cafe Tacvba'),(2,'Los Fabulosos Cadilacs'),(3,'Los Rabanes'),(4,'Mana'),(5,'Pitbull');

CREATE TABLE `donuts` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `sabor` varchar(100) NOT NULL, 
  `precio` varchar(100) NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 

INSERT INTO `donuts` VALUES (1,'Cafe Tacvba'),(2,'Los Fabulosos Cadilacs'),(3,'Los Rabanes'),(4,'Mana'),(5,'Pitbull');

CREATE TABLE `pastelerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artistas_id` int(11) NOT NULL, 
  `fecha` varchar(100) NOT NULL,
  `costo` varchar(45) NOT NULL,
  `capacidad` varchar(45) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  
  PRIMARY KEY (`id`,`artistas_id`),
  KEY `fk_conciertos_artistas_idx` (`artistas_id`),
  CONSTRAINT `fk_conciertos_artistas` FOREIGN KEY (`artistas_id`) REFERENCES `artistas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
  ) ;

INSERT INTO `conciertos` VALUES (1,1,'Marzo 10','45.000','120,000 Personas','Parque Viva');
INSERT INTO `conciertos` VALUES (2,2,'Marzo 11','50.000','120,000 Personas','Parque Viva');
INSERT INTO `conciertos` VALUES (3,3,'Marzo 12','35.000','120,000 Personas','Parque Viva');
INSERT INTO `conciertos` VALUES (4,4,'Marzo 13','30.000','120,000 Personas','Parque Viva');
INSERT INTO `conciertos` VALUES (5,5,'Marzo 14','55.000','120,000 Personas','Parque Viva');*/
