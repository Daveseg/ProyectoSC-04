CREATE DATABASE Velvet1; 
use Velvet1; 

CREATE TABLE `Tipo_Usuario` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipo`)
  )ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
  
  INSERT INTO `Tipo_Usuario` VALUES (1, 'Adminitrador'),(2,'Empleado'),(3,'Cliente');

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido_1` varchar(50) NOT NULL,
  `Apellido_2` varchar(50) NULL,
  `Login` varchar(50) NULL,
  `Pass` varchar(50) NULL,
  `id_tipo` int(11) not null ,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tipo_usuario` FOREIGN KEY (`id_tipo`) REFERENCES `Tipo_Usuario` (`id_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
  );
  
  INSERT INTO `Usuario` VALUES (1, 'Jose', 'Fonseca','Lopez','JFonseca','1234',1),(2, 'Ramon', 'Salazar','Gonzalez','RSalazar','1234',2),(3, 'Ashley', 'Graham','Siles','AGraham','1234',3);
  
  CREATE TABLE `Tipo_Producto` (
  `id_tipoP` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipoP`)
  )ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
  
  INSERT INTO `Tipo_Producto` VALUES (1, 'Queque'),(2,'Dona'),(3,'Galleta'),(4,'Bocadillo');

CREATE TABLE `Producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `sabor` varchar(100) NOT NULL, 
  `precio` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `id_tipoP` int(11) not null ,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tipo_producto` FOREIGN KEY (`id_tipoP`) REFERENCES `Tipo_Producto` (`id_tipoP`) ON DELETE NO ACTION ON UPDATE NO ACTION
  );
  
  INSERT INTO `Producto` VALUES
(1,'Zanahoria', '₡5,000', 'Un delicioso queque de zanahoria preparado con los ingredientes más frescos',1),
(2,'Vainilla','₡6,000', 'Una deliciosa combinación de Queque Tradicional y Queque de vainilla',1),
(3,'Naranja','₡4,000', 'El tradicional, pero no te dejes engañar, igual de delicioso',1),
(4,'Chocolate','₡5,000', 'Un delicioso queque preparado a base de chocolate oscuro',1),
(5,'Crema y Frambuesa','₡5,000', 'Deliciosa combinación de crema y frambuesa en nuestro queque tradicional',1),
(6,'Dona Glaseada', '₡2,000', 'Una deliciosa dona Glaseada de sabores a su preferencia',2),
(7,'Dona de chocolate','₡2,000', 'Una deliciosa dona de chocolate Tradicional',2),
(8,'Dona de crema pastelera','₡2,000', 'Deliciosa dona rellena de crema pastelera',2),
(9,'Cronut','₡2,000', 'Una deliciosa dona hecha con masa de croissant y glaseado a su eleccion',2),
(10,'Dona tradicional azucarada','₡2,000', 'Clasica dona azucarada',2),
(11,'Funfetti cookie', '₡1,000', 'Deliciosa galleta con chispas de colores',3),
(12,'Red Velvet','₡1,000', 'Una deliciosa galleta con chispas de chocolate y festivo color rojo',3),
(13,'Macarons','₡1,500', 'Dos galletas unidas por una tierna crema o ganache entre ambas',3),
(14,'Chocolate chip cookie','₡1,000', 'Clasica galleta crujiente con trocitos de chocolate',3),
(15,'Alfajores Argentinos','₡1,500', 'Deliciosa galletas rellenas de dulce de leche y azúcar glaseado',3),
(16,'Croissants', '₡5,000', 'Un delicioso bocadilla de masa de hojaldre fermentada en forma de luna creciente',4),
(17,'Cannoncini','₡6,000', 'Bocadillo Crujiente en la superficie, suave por dentro y relleno de una sabrosa crema de vainilla',4),
(18,'Trenza salada','₡4,000', 'Pan en forma de trenza con queso salado que lo hace un delicioso bocadillo ',4),
(19,'Pupusas dulces','₡5,000', 'Un delicioso pan dulce suave, perfecto para un cafe',4),
(20,'Budín clásico','₡5,000', ' Bocadillo, dulce o salado, que se cuece y cuaja dentro de un molde de paredes altas al baño María.',4);

CREATE TABLE `Sucursal` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`Nombre` varchar(100) NOT NULL, 
    PRIMARY KEY (`id`)
    )ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
    
	INSERT INTO `Sucursal` VALUES (1, 'Lindora, San Jose'),(2,'San Pedro, San Jose');

CREATE TABLE `Carrito` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`id_Usuario` int(11) NOT NULL, 
    `id_Producto` int(11) NOT NULL,
    `Cantidad` int(11) NOT NULL,
    `id_Sucursal` int(11) NOT NULL,
    PRIMARY KEY (`id`),
	CONSTRAINT `fk_carrito_usuario` FOREIGN KEY (`id_Usuario`) REFERENCES `Usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_carrito_producto` FOREIGN KEY (`id_Producto`) REFERENCES `Producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_carrito_sucursal` FOREIGN KEY (`id_Sucursal`) REFERENCES `Sucursal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
    );
    
CREATE TABLE `Factura` (
	`Recibo` int(11) NOT NULL AUTO_INCREMENT, 
	`Fecha` datetime NOT NULL, 
    `id_Usuario` int(11) NOT NULL,
    `id_Sucursal` int(11) NOT NULL,
    `Total` int(11) NOT NULL,
    PRIMARY KEY (`Recibo`),
    CONSTRAINT `fk_factura_usuario` FOREIGN KEY (`id_Usuario`) REFERENCES `Usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_factura_sucursal` FOREIGN KEY (`id_Sucursal`) REFERENCES `Sucursal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `Detalle_Factura` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`Recibo` int(11) NOT NULL,
    `id_Producto` int(11) NOT NULL,
    `Cantidad` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_Dfactura_Recibo` FOREIGN KEY (`Recibo`) REFERENCES `Factura` (`Recibo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_Dfactura_Producto` FOREIGN KEY (`id_Producto`) REFERENCES `Producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `Inventario` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`id_Producto` int(11) NOT NULL,
    `id_Sucursal` int(11) NOT NULL,
    `Cantidad` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_Inventario_Sucursal` FOREIGN KEY (`id_Sucursal`) REFERENCES `Sucursal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_Inventario_Producto` FOREIGN KEY (`id_Producto`) REFERENCES `Producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

insert into `Inventario` values (1,1,1,5),(2,2,1,5),(3,3,1,5),(4,4,1,5),(5,5,1,5),(6,6,1,5),(7,7,1,5),(8,8,1,5),(9,9,1,5),(10,10,1,5),
                                (11,11,1,5),(12,12,1,5),(13,13,1,5),(14,14,1,5),(15,15,1,5),(16,16,1,5),(17,17,1,5),(18,18,1,5),(19,19,1,5),(20,20,1,5),
								(21,1,2,5),(22,2,2,5),(23,3,2,5),(24,4,2,5),(25,5,2,5),(26,6,2,5),(27,7,2,5),(28,8,2,5),(29,9,2,5),(30,10,2,5),
                                (31,11,2,5),(32,12,2,5),(33,13,2,5),(34,14,2,5),(35,15,2,5),(36,16,2,5),(37,17,2,5),(38,18,2,5),(39,19,2,5),(40,20,2,5)

























