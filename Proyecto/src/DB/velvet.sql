CREATE DATABASE Velvet; 
use Velvet; 

CREATE TABLE `tablaCakes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cake` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
  
INSERT INTO `tablaCakes` VALUES (1,'Queque de Zanahoria'),(2,'Queque Marmoleado'),(3,'Queque Tradicional'),(4,'Queque de Chocolate'),(5,'Queque relleno de Crema y Frambuesa');
    
  CREATE TABLE `cakes` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `sabor` varchar(100) NOT NULL, 
  `precio` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tablaCakes_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`tablaCakes_id`),
  KEY `fk_cakes_tablaCakes_idx` (`tablaCakes_id`),
  CONSTRAINT `fk_cakes_tablaCakes` FOREIGN KEY (`tablaCakes_id`) REFERENCES `tablaCakes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);     

INSERT INTO `cakes` VALUES 
(1,'Zanahoria', '₡5,000', 'Un delicioso queque de zanahoria preparado con los ingredientes más frescos',1),
(2,'Vainilla','₡6,000', 'Una deliciosa combinación de Queque Tradicional y Queque de vainilla',2),
(3,'Naranja','₡4,000', 'El tradicional, pero no te dejes engañar, igual de delicioso',3),
(4,'Chocolate','₡5,000', 'Un delicioso queque preparado a base de chocolate oscuro',4),
(5,'Crema y Frambuesa','₡5,000', 'Deliciosa combinación de crema y frambuesa en nuestro queque tradicional',5);
