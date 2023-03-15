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

CREATE TABLE `tablaCookies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cookie` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
  
INSERT INTO `tablaCookies` VALUES (1,'Funfetti cookie'),(2,'Red Velvet'),(3,'Macarons'),(4,'Chocolate chip cookie'),(5,'Alfajores Argentinos');
    
  CREATE TABLE `cookies` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `sabor` varchar(100) NOT NULL, 
  `precio` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tablaCookies_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`tablaCookies_id`),
  KEY `fk_cookies_tablaCookies_idx` (`tablaCookies_id`),
  CONSTRAINT `fk_cookies_tablaCookies` FOREIGN KEY (`tablaCookies_id`) REFERENCES `tablaCookies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);     

INSERT INTO `cookies` VALUES 
(1,'Funfetti cookie', '₡1,000', 'Deliciosa galleta con chispas de colores',1),
(2,'Red Velvet','₡1,000', 'Una deliciosa galleta con chispas de chocolate y festivo color rojo',2),
(3,'Macarons','₡1,500', 'Dos galletas unidas por una tierna crema o ganache entre ambas',3),
(4,'Chocolate chip cookie','₡1,000', 'Clasica galleta crujiente con trocitos de chocolate',4),
(5,'Alfajores Argentinos','₡1,500', 'Deliciosa galletas rellenas de dulce de leche y azúcar glaseado',5);

CREATE TABLE `tabladonuts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `donut` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
  
INSERT INTO `tabladonuts` VALUES (1,'Dona Glaseada'),(2,'Dona de chocolate'),(3,'Dona de crema pastelera'),(4,'Cronut'),(5,'Dona tradicional azucarada');
    
  CREATE TABLE `donuts` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `sabor` varchar(100) NOT NULL, 
  `precio` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tabladonuts_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`tabladonuts_id`),
  KEY `fk_donuts_tabladonuts_idx` (`tabladonuts_id`),
  CONSTRAINT `fk_donuts_tabladonuts` FOREIGN KEY (`tabladonuts_id`) REFERENCES `tabladonuts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);     

INSERT INTO `donuts` VALUES 
(1,'Dona Glaseada', '₡2,000', 'Una deliciosa dona Glaseada de sabores a su preferencia',1),
(2,'Dona de chocolate','₡2,000', 'Una deliciosa dona de chocolate Tradicional',2),
(3,'Dona de crema pastelera','₡2,000', 'Deliciosa dona rellena de crema pastelera',3),
(4,'Cronut','₡2,000', 'Una deliciosa dona hecha con masa de croissant y glaseado a su eleccion',4),
(5,'Dona tradicional azucarada','₡2,000', 'Clasica dona azucarada',5);

CREATE TABLE `tablasnacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snack` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
  
INSERT INTO `tablasnacks` VALUES (1,'Croissants'),(2,'Cannoncini'),(3,'Trenza salada'),(4,'Pupusas dulces'),(5,'Budín clásico');
    
  CREATE TABLE `snacks` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `sabor` varchar(100) NOT NULL, 
  `precio` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tablasnacks_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`tablasnacks_id`),
  KEY `fk_snacks_tablasnacks_idx` (`tablasnacks_id`),
  CONSTRAINT `fk_snacks_tablasnacks` FOREIGN KEY (`tablasnacks_id`) REFERENCES `tablasnacks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);     

INSERT INTO `snacks` VALUES 
(1,'Croissants', '₡5,000', 'Un delicioso bocadilla de masa de hojaldre fermentada en forma de luna creciente',1),
(2,'Cannoncini','₡6,000', 'Bocadillo Crujiente en la superficie, suave por dentro y relleno de una sabrosa crema de vainilla',2),
(3,'Trenza salada','₡4,000', 'Pan en forma de trenza con queso salado que lo hace un delicioso bocadillo ',3),
(4,'Pupusas dulces','₡5,000', 'Un delicioso pan dulce suave, perfecto para un cafe',4),
(5,'Budín clásico','₡5,000', ' Bocadillo, dulce o salado, que se cuece y cuaja dentro de un molde de paredes altas al baño María.',5);

