CREATE DATABASE Velvet; 
use Velvet; 

CREATE TABLE `Tipo_Usuario` (
  `id_tipoU` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tipoU`)
  )ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
  
  INSERT INTO `Tipo_Usuario` VALUES (1, 'Adminitrador'),(2,'Empleado'),(3,'Cliente');

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido_1` varchar(50) NOT NULL,
  `Apellido_2` varchar(50) NULL,
  `Login` varchar(50) NULL,
  `Pass` varchar(50) NULL,
  `tipoU` int(11) not null ,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tipo_usuario` FOREIGN KEY (`tipoU`) REFERENCES `Tipo_Usuario` (`id_tipoU`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `image_url` varchar(100) NOT NULL,
  `tipoP` int(11) not null ,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tipo_producto` FOREIGN KEY (`tipoP`) REFERENCES `Tipo_Producto` (`id_tipoP`) ON DELETE NO ACTION ON UPDATE NO ACTION
  );
  
  INSERT INTO `Producto` VALUES
(1,'Zanahoria', '₡5,000', 'Un delicioso queque de zanahoria preparado\n con los ingredientes más frescos.','images/zanahoria.jpeg',1),
(2,'Vainilla','₡6,000', 'Una deliciosa combinación de\n Queque Tradicional y Queque de vainilla','images/quequeVainilla.jpg',1),
(3,'Naranja','₡4,000', 'El tradicional, pero no te dejes engañar,\n igual de delicioso','images/Queque Naranja.jpg',1),
(4,'Chocolate','₡5,000', 'Un delicioso queque preparado a base de chocolate oscuro\n relleno de Dulce de leche','images/Queque Chocolate.jpg',1),
(5,'Crema y Frambuesa','₡5,000', 'Deliciosa combinación de crema y\n frambuesa en nuestro queque tradicional','images/quequeCremaFrambuesa.jpg',1),
(6,'Snickers','₡5,000', 'Delicioso queque preparado con el favorito\n Snickers','images/Snickers Cake.jpg',1),

(7,'Dona Glaseada', '₡2,000', 'Una deliciosa dona Glaseada\n de sabores a su preferencia','images/donaGlaseada.jpg',2),
(8,'Dona de chocolate','₡2,000', 'Una deliciosa dona de chocolate Tradicional','images/DonaChocolate.jpg',2),
(9,'Dona de crema pastelera','₡2,000', 'Deliciosa dona rellena de crema pastelera','images/cremapastelera.jpg',2),
(10,'Cronut','₡2,000', 'Una deliciosa dona hecha con masa de croissant','images/Cronut.jpg',2),
(11,'Dona tradicional azucarada','₡2,000', 'Clasica dona azucarada','images/DonaAzucarada.jpg',2),
(12,'Dona de Arandanos','₡2,000', 'Deliciosa Dona rellena de mermelada de Arandanos','images/DonaArandano.jpg',2),

(13,'Funfetti cookie', '₡1,000', 'Deliciosa galleta con chispas de colores','images/Funfetti Cookie.jpg',3),
(14,'Red Velvet','₡1,000', 'Una deliciosa galleta con chispas de chocolate y festivo color rojo','images/Red Velvet Cookie.jpg',3),
(15,'Macarons','₡1,500', 'Dos galletas unidas por una tierna crema o ganache entre ambas','images/Macarons cookies.jpg',3),
(16,'Chocolate chip cookie','₡1,000', 'Clasica galleta crujiente con trocitos de chocolate','images/ChocolateChipCookies.jpg',3),
(17,'Alfajores Argentinos','₡1,500', 'Deliciosa galletas rellenas de dulce de leche y azúcar glaseado','images/Alfajores.jpg',3),
(18,'Galleta de Leche Condensada', '₡1,500', 'Aquí va la descripciónn','images/GalletaLecheCondensada.jpg',3),

(19,'Croissants', '₡5,000', 'Bocadilla de masa de hojaldre\n fermentada en forma de luna creciente','images/croissants.jpg',4),
(20,'Cannoncini','₡6,000', 'Bocadillo Crujiente en la superficie, suave por dentro y relleno de una sabrosa crema de vainilla','images/Italian Cream Stuffed Cannoncini (Cream Horns).jpg',4),
(21,'Trenza salada','₡4,000', 'Pan en forma de trenza con queso salado que lo hace un delicioso bocadillo ','images/TrenzaSalada.png',4),
(22,'Pupusas dulces','₡5,000', 'Un delicioso pan dulce suave, perfecto para un cafe','images/Pupusa.jpg',4),
(23,'Budín clásico','₡5,000', ' Bocadillo, dulce o salado, que se cuece y cuaja dentro de un molde de paredes altas al baño María.','images/Budin.jpg',4),
(24,'Bollitos de Queso','₡5,000', 'Aquí va la descripciónn','images/BollitosDeQueso.jpg',4);


CREATE TABLE `Sucursal` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`Nombre` varchar(100) NOT NULL, 
    PRIMARY KEY (`id`)
    )ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; 
    
	INSERT INTO `Sucursal` VALUES (1, 'Lindora, San Jose'),(2,'San Pedro, San Jose');

CREATE TABLE `Carrito` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`usuario_id` int(11) NOT NULL, 
    `producto_id` int(11) NOT NULL,
    `cantidad` int(11) NOT NULL,
    `sucursal_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
	CONSTRAINT `fk_carrito_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_carrito_producto` FOREIGN KEY (`producto_id`) REFERENCES `Producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_carrito_sucursal` FOREIGN KEY (`sucursal_id`) REFERENCES `Sucursal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
    );
    
CREATE TABLE `Factura` (
	`Recibo` int(11) NOT NULL AUTO_INCREMENT, 
	`Fecha` datetime NOT NULL, 
    `usuario_id` int(11) NOT NULL,
    `sucursal_id` int(11) NOT NULL,
    PRIMARY KEY (`Recibo`),
    CONSTRAINT `fk_factura_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_factura_sucursal` FOREIGN KEY (`sucursal_id`) REFERENCES `Sucursal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `Detalle_Factura` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`Recibo` int(11) NOT NULL,
    `producto_id` int(11) NOT NULL,
    `Cantidad` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_Dfactura_Recibo` FOREIGN KEY (`Recibo`) REFERENCES `Factura` (`Recibo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_Dfactura_Producto` FOREIGN KEY (`producto_id`) REFERENCES `Producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `Inventario` (
	`id` int(11) NOT NULL AUTO_INCREMENT, 
	`ProductoId` int(11) NOT NULL,
    `SucursalId` int(11) NOT NULL,
    `Cantidad` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_Inventario_Sucursal` FOREIGN KEY (`SucursalId`) REFERENCES `Sucursal` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `fk_Inventario_Producto` FOREIGN KEY (`ProductoId`) REFERENCES `Producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

insert into `Inventario` values (1,1,1,5),(2,2,1,5),(3,3,1,5),(4,4,1,5),(5,5,1,5),(6,6,1,5),(7,7,1,5),(8,8,1,5),(9,9,1,5),(10,10,1,5),
                                (11,11,1,5),(12,12,1,5),(13,13,1,5),(14,14,1,5),(15,15,1,5),(16,16,1,5),(17,17,1,5),(18,18,1,5),(19,19,1,5),(20,20,1,5),
								(21,1,2,5),(22,2,2,5),(23,3,2,5),(24,4,2,5),(25,5,2,5),(26,6,2,5),(27,7,2,5),(28,8,2,5),(29,9,2,5),(30,10,2,5),
                                (31,11,2,5),(32,12,2,5),(33,13,2,5),(34,14,2,5),(35,15,2,5),(36,16,2,5),(37,17,2,5),(38,18,2,5),(39,19,2,5),(40,20,2,5);





/*
SELECT Producto.id, Tipo_Producto.Nombre,  Producto.sabor, Producto.Descripcion, Inventario.Cantidad 
FROM Producto
INNER JOIN Inventario ON (Producto.id = Inventario.ProductoId)
INNER JOIN Tipo_Producto ON (Producto.tipoP = Tipo_Producto.id_tipoP)
WHERE Inventario.SucursalId = 1;
*/




















