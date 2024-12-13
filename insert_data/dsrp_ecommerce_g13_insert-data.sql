---QUERY PARA EL INGRESO DE DATOS A CADA TABLA---

USE dsrp_ecommerce_g13
GO


--Generamos 25 registros para la tabla CLIENTES
SELECT * FROM clientes
INSERT INTO Clientes (tipo_documento, numero_documento, apellido_paterno, apellido_materno, nombre, email, direccion, ciudad, departamento, telefono, fecha_nacimiento, fecha_registro)
VALUES
('DNI', '12345678', 'Pérez', 'González', 'Juan', 'juan.perez@email.com', 'Av. Siempre Viva 123', 'Lima', 'Lima', '987654321', '1990-05-15', '2024-01-15'),
('CE', '9876543210001', 'Ramírez', 'Suárez', 'Carlos', 'carlos.ramirez@email.com', 'Calle Falsa 456', 'Arequipa', 'Arequipa', '987654322', '1985-08-20', '2024-02-02'),
('DNI', '87654321', 'Lopez', 'Martínez', 'Ana', 'ana.lopez@email.com', 'Jr. Los Olivos 789', 'Cusco', 'Cusco', '987654323', '1992-02-10', '2024-03-05'),
('DNI', '23456789', 'Fernández', 'Alvarado', 'Luis', 'luis.fernandez@email.com', 'Av. Las Palmas 101', 'Trujillo', 'La Libertad', '987654324', '1993-04-25', '2024-04-10'),
('CE', '111223344', 'Gómez', 'Castro', 'Pedro', 'pedro.gomez@email.com', 'Callejón del Sol 202', 'Piura', 'Piura', '987654325', '1987-12-18', '2024-05-22'),
('DNI', '98765432', 'Sánchez', 'Rodríguez', 'Marta', 'marta.sanchez@email.com', 'Calle 123', 'Lima', 'Lima', '987654326', '1989-01-05', '2024-06-07'),
('DNI', '34567890', 'Martínez', 'Jiménez', 'Carlos', 'carlos.martinez@email.com', 'Jr. de la Paz 204', 'Chiclayo', 'Lambayeque', '987654327', '1995-07-22', '2024-07-14'),
('DNI', '56789012', 'Vásquez', 'Mendoza', 'Roberto', 'roberto.vasquez@email.com', 'Av. Libertad 303', 'Ica', 'Ica', '987654328', '1990-11-30', '2024-08-05'),
('CE', '1029384756', 'Torres', 'Salazar', 'Elena', 'elena.torres@email.com', 'Calle Angosta 405', 'Tacna', 'Tacna', '987654329', '1991-09-15', '2024-09-20'),
('DNI', '24681012', 'Cruz', 'García', 'Jorge', 'jorge.cruz@email.com', 'Calle de los Pinos 506', 'Arequipa', 'Arequipa', '987654330', '1994-02-02', '2024-10-11'),
('CE', '384758293', 'Alvarado', 'Pérez', 'Lucía', 'lucia.alvarado@email.com', 'Av. Perú 607', 'Lima', 'Lima', '987654331', '1988-10-10', '2024-11-30'),
('DNI', '13579246', 'Jiménez', 'Santos', 'Sofía', 'sofia.jimenez@email.com', 'Calle Real 708', 'Cajamarca', 'Cajamarca', '987654332', '1996-06-16', '2024-12-05'),
('DNI', '75395123', 'González', 'Rodríguez', 'María', 'maria.gonzalez@email.com', 'Calle Los Andes 809', 'Huancayo', 'Junín', '987654333', '1992-03-03', '2024-01-22'),
('CE', '5647382910', 'Mendoza', 'López', 'Manuel', 'manuel.mendoza@email.com', 'Av. El Sol 901', 'Piura', 'Piura', '987654334', '1990-12-22', '2024-02-19'),
('DNI', '11223344', 'Rojas', 'Serrano', 'Martín', 'martin.rojas@email.com', 'Jr. Los Olivos 102', 'Trujillo', 'La Libertad', '987654335', '1994-05-25', '2024-03-11'),
('DNI', '44332211', 'Paredes', 'Díaz', 'Carlos', 'carlos.paredes@email.com', 'Calle El Mirador 203', 'Cusco', 'Cusco', '987654336', '1988-11-14', '2024-04-23'),
('DNI', '99887766', 'Gutiérrez', 'Bermúdez', 'Vanessa', 'vanessa.gutierrez@email.com', 'Calle Fátima 304', 'Tacna', 'Tacna', '987654337', '1993-01-20', '2024-05-15'),
('DNI', '12398745', 'Silva', 'Hernández', 'Elena', 'elena.silva@email.com', 'Av. Los Incas 405', 'Ica', 'Ica', '987654338', '1989-07-12', '2024-06-29'),
('CE', '9483746532', 'Bravo', 'Vásquez', 'Martín', 'martin.bravo@email.com', 'Jr. La Victoria 506', 'Chiclayo', 'Lambayeque', '987654339', '1992-02-27', '2024-07-20'),
('DNI', '55667788', 'López', 'Martínez', 'Esteban', 'esteban.lopez@email.com', 'Av. La Paz 607', 'Lima', 'Lima', '987654340', '1994-04-18', '2024-08-17'),
('CE', '1938475612', 'Salazar', 'Torres', 'Beatriz', 'beatriz.salazar@email.com', 'Calle 9 708', 'Piura', 'Piura', '987654341', '1987-10-06', '2024-09-25'),
('DNI', '66554433', 'Sánchez', 'Cabrera', 'Fernanda', 'fernanda.sanchez@email.com', 'Av. El Sol 809', 'Tacna', 'Tacna', '987654342', '1991-03-14', '2024-10-05'),
('DNI', '77889900', 'Martínez', 'Reyes', 'Miguel', 'miguel.martinez@email.com', 'Calle Bolívar 901', 'Trujillo', 'La Libertad', '987654343', '1995-11-07', '2024-11-17'),
('DNI', '22334455', 'Ramírez', 'Lozano', 'Patricia', 'patricia.ramirez@email.com', 'Av. Libertad 102', 'Chiclayo', 'Lambayeque', '987654344', '1989-09-19', '2024-12-01');

SELECT * FROM clientes

-- Al generar la tabla nos dimos cuenta que todos los registros salían con las 0 horas, por lo que decidimos eliminar los datos y agregar horas aleatorias a cada cliente.
DELETE FROM clientes; -- para borrar los datos
DBCC CHECKIDENT ('clientes', RESEED, 0); -- para reiniciar el conteo del ID y que no empiece con un número alto al ingresar nuevamente la data

SELECT * FROM clientes -- para confirmar el borrado

-- Ahora sí a ingresar nuevamente la data en CLIENTES
INSERT INTO Clientes (tipo_documento, numero_documento, apellido_paterno, apellido_materno, nombre, email, direccion, ciudad, departamento, telefono, fecha_nacimiento, fecha_registro)
VALUES
('DNI', '12345678', 'Pérez', 'González', 'Juan', 'juan.perez@email.com', 'Av. Siempre Viva 123', 'Lima', 'Lima', '987654321', '1990-05-15', '2024-01-15 08:30:00'),
('CE', '20123456789012345679', 'Ramírez', 'Suárez', 'Carlos', 'carlos.ramirez@email.com', 'Calle Falsa 456', 'Arequipa', 'Arequipa', '987654322', '1985-08-20', '2024-02-02 14:45:00'),
('DNI', '87654322', 'Lopez', 'Martínez', 'Ana', 'ana.lopez@email.com', 'Jr. Los Olivos 789', 'Cusco', 'Cusco', '987654323', '1992-02-10', '2024-03-05 11:15:00'),
('DNI', '23456790', 'Fernández', 'Alvarado', 'Luis', 'luis.fernandez@email.com', 'Av. Las Palmas 101', 'Trujillo', 'La Libertad', '987654324', '1993-04-25', '2024-04-10 17:00:00'),
('CE', '20123456789012345680', 'Gómez', 'Castro', 'Pedro', 'pedro.gomez@email.com', 'Callejón del Sol 202', 'Piura', 'Piura', '987654325', '1987-12-18', '2024-05-22 12:30:00'),
('CE', '20123456789012345681', 'Sánchez', 'Rodríguez', 'Marta', 'marta.sanchez@email.com', 'Calle 123', 'Lima', 'Lima', '987654326', '1989-01-05', '2024-06-07 09:00:00'),
('DNI', '34567891', 'Martínez', 'Jiménez', 'Carlos', 'carlos.martinez@email.com', 'Jr. de la Paz 204', 'Chiclayo', 'Lambayeque', '987654327', '1995-07-22', '2024-07-14 19:45:00'),
('DNI', '56789013', 'Vásquez', 'Mendoza', 'Roberto', 'roberto.vasquez@email.com', 'Av. Libertad 303', 'Ica', 'Ica', '987654328', '1990-11-30', '2024-08-05 10:30:00'),
('CE', '20123456789012345682', 'Torres', 'Salazar', 'Elena', 'elena.torres@email.com', 'Calle Angosta 405', 'Tacna', 'Tacna', '987654329', '1991-09-15', '2024-09-20 13:00:00'),
('DNI', '65432110', 'Mendoza', 'Guerra', 'José', 'jose.mendoza@email.com', 'Calle Los Álamos 506', 'Lima', 'Lima', '987654330', '1994-11-10', '2024-10-15 14:00:00'),
('DNI', '23456791', 'Silva', 'Jara', 'Lucía', 'lucia.silva@email.com', 'Av. Las Rosas 607', 'Arequipa', 'Arequipa', '987654331', '1992-06-03', '2024-11-02 15:30:00'),
('CE', '20123456789012345683', 'Cáceres', 'Ramírez', 'Marta', 'marta.caceres@email.com', 'Jr. La Paz 708', 'Iquitos', 'Loreto', '987654332', '1993-01-12', '2024-12-04 16:00:00'),
('DNI', '12345679', 'García', 'Valencia', 'Ricardo', 'ricardo.garcia@email.com', 'Av. del Mar 809', 'Piura', 'Piura', '987654333', '1990-03-15', '2024-01-30 09:45:00'),
('CE', '20123456789012345684', 'Aguirre', 'Hernández', 'Juan', 'juan.aguirre@email.com', 'Calle Fama 910', 'Chimbote', 'Áncash', '987654334', '1991-05-20', '2024-02-15 17:30:00'),
('CE', '20123456789012345685', 'Romero', 'López', 'Andrea', 'andrea.romero@email.com', 'Jr. Central 1111', 'Cusco', 'Cusco', '987654335', '1994-10-11', '2024-03-25 18:00:00'),
('DNI', '45678902', 'Quispe', 'Maldonado', 'Carlos', 'carlos.quispe@email.com', 'Calle Nueva 1122', 'Lima', 'Lima', '987654336', '1992-07-18', '2024-04-20 08:30:00'),
('DNI', '23456792', 'Vega', 'Mendoza', 'Natalia', 'natalia.vega@email.com', 'Av. La Paz 2233', 'Tacna', 'Tacna', '987654337', '1989-03-21', '2024-05-18 19:00:00'),
('DNI', '34567892', 'Vargas', 'Herrera', 'Miguel', 'miguel.vargas@email.com', 'Callejón de la Luna 3344', 'Trujillo', 'La Libertad', '987654338', '1990-06-10', '2024-06-05 14:30:00'),
('CE', '20123456789012345686', 'Salinas', 'Palma', 'Eduardo', 'eduardo.salinas@email.com', 'Jr. Los Andes 4455', 'Ica', 'Ica', '987654339', '1991-04-28', '2024-07-10 15:00:00'),
('DNI', '23456793', 'Ríos', 'Gonzáles', 'José', 'jose.rios@email.com', 'Av. de la Unidad 5566', 'Arequipa', 'Arequipa', '987654340', '1994-08-05', '2024-08-12 16:15:00'),
('DNI', '12345680', 'Campos', 'Vásquez', 'María', 'maria.campos@email.com', 'Calle las Palmas 6677', 'Cusco', 'Cusco', '987654341', '1987-12-09', '2024-09-07 10:30:00'),
('CE', '20123456789012345687', 'Ramírez', 'Díaz', 'Ricardo', 'ricardo.ramirez@email.com', 'Av. la Cima 7788', 'Chiclayo', 'Lambayeque', '987654342', '1990-01-20', '2024-10-03 11:00:00'),
('CE', '20123456789012345688', 'Cordero', 'Paredes', 'José', 'jose.cordero@email.com', 'Callejón 8899', 'Iquitos', 'Loreto', '987654343', '1995-06-15', '2024-11-16 13:00:00'),
('DNI', '98765433', 'Maldonado', 'Alvarado', 'Lucía', 'lucia.maldonado@email.com', 'Jr. Los Álamos 9900', 'Trujillo', 'La Libertad', '987654344', '1992-09-10', '2024-12-20 14:30:00');

SELECT * FROM clientes

--Generamos registros para la tabla CLIENTES. Se especificará, para efectos didácticos, cuáles son categorías y cuáles subcategorías
SELECT * FROM categorias
INSERT INTO categorias (nombre, categoria_padre_id)
VALUES
('Electrónica', NULL),   -- Categoría padre
('Celulares y Accesorios', 1),  -- Subcategoría de Electrónica
('Laptops y Computadoras', 1),  -- Subcategoría de Electrónica
('Televisores y Audio', 1),  -- Subcategoría de Electrónica
('Ropa y Moda', NULL),  -- Categoría padre
('Hombres', 5),  -- Subcategoría de Ropa y Moda
('Mujeres', 5),  -- Subcategoría de Ropa y Moda
('Calzado', 5),  -- Subcategoría de Ropa y Moda
('Hogar y Muebles', NULL),  -- Categoría padre
('Muebles para Sala', 9),  -- Subcategoría de Hogar y Muebles
('Muebles para Cocina', 9),  -- Subcategoría de Hogar y Muebles
('Deportes y Fitness', NULL),  -- Categoría padre
('Equipos de Gimnasio', 12);  -- Subcategoría de Deportes y Fitness

SELECT * FROM categorias --Validamos que la data sea correcta


--Los registros para la tabla PRODUCTOS:
SELECT * FROM productos

INSERT INTO productos (nombre, descripcion, precio, stock, categoria_id)
VALUES
-- Electrónica -> Celulares y Accesorios
('iPhone 15', 'Smartphone de última generación con cámara de 48 MP', 899.99, 100, 2),
('Samsung Galaxy S23', 'Smartphone con pantalla AMOLED y cámara de 50 MP', 800.00, 120, 2),
('AirPods Pro 2', 'Auriculares inalámbricos con cancelación activa de ruido', 249.99, 150, 2),
('Samsung Galaxy Buds 2', 'Auriculares inalámbricos con sonido dinámico', 149.99, 200, 2),
('Xiaomi Redmi Note 12', 'Smartphone económico con excelente rendimiento', 199.00, 80, 2),
('Cargador inalámbrico Anker', 'Cargador inalámbrico rápido para dispositivos', 40.00, 300, 2),
('Funda OtterBox para iPhone 15', 'Funda protectora de alta calidad para iPhone', 45.99, 250, 2),
('Samsung Galaxy Watch 5', 'Reloj inteligente con monitorización de salud', 229.99, 90, 2),

-- Electrónica -> Laptops y Computadoras
('MacBook Pro 14"', 'Laptop de alto rendimiento con chip M1 Pro', 1999.99, 60, 3),
('Dell XPS 13', 'Laptop ultradelgada con pantalla 4K y procesador i7', 1499.00, 70, 3),
('HP Pavilion 15', 'Laptop con procesador Intel Core i5 y pantalla Full HD', 649.99, 150, 3),
('Lenovo ThinkPad X1', 'Laptop empresarial con pantalla 4K y alto rendimiento', 1799.00, 40, 3),
('Microsoft Surface Laptop 4', 'Laptop premium con pantalla táctil y procesador Intel i7', 1299.99, 80, 3),
('Asus VivoBook 15', 'Laptop asequible para estudiantes y profesionales', 499.99, 180, 3),
('Acer Predator Helios 300', 'Laptop para juegos con pantalla 144 Hz y RTX 3060', 1699.00, 120, 3),

-- Electrónica -> Televisores y Audio
('Samsung 65" 4K UHD TV', 'Televisor Samsung UHD con Smart TV integrado', 899.00, 50, 4),
('LG OLED 55"', 'Televisor OLED con calidad de imagen inigualable', 1299.00, 40, 4),
('Sonos Beam', 'Barra de sonido para mejorar la experiencia de audio en el hogar', 399.99, 200, 4),
('Bose SoundLink Revolve+', 'Altavoz Bluetooth portátil con sonido envolvente', 299.00, 300, 4),

-- Ropa y Moda -> Hombres
('Camiseta Nike Dri-Fit', 'Camiseta deportiva de secado rápido', 29.99, 150, 5),
('Pantalones Levi''s 501', 'Pantalones de mezclilla clásicos para hombre', 79.99, 100, 5),
('Chaqueta Columbia', 'Chaqueta impermeable para clima frío', 99.00, 80, 5),
('Zapatos Adidas Ultraboost', 'Zapatos deportivos cómodos y de alto rendimiento', 119.00, 200, 5),
('Reloj Casio G-Shock', 'Reloj resistente con múltiples funciones para hombres', 79.00, 300, 5),

-- Ropa y Moda -> Mujeres
('Blusa H&M', 'Blusa casual de manga corta para mujeres', 24.99, 150, 6),
('Vestido Zara', 'Vestido elegante para ocasiones especiales', 49.99, 120, 6),
('Zapatos Boda Jimmy Choo', 'Zapatos elegantes para bodas y eventos', 449.00, 80, 6),
('Pantalones Stradivarius', 'Pantalones cómodos para el día a día', 39.99, 200, 6),
('Cartera Michael Kors', 'Cartera de cuero de alta calidad', 149.99, 50, 6),

-- Ropa y Moda -> Calzado
('Nike Air Max', 'Zapatillas deportivas con diseño innovador', 89.99, 300, 7),
('Adidas Stan Smith', 'Zapatillas clásicas de tenis para hombres y mujeres', 79.00, 250, 7),
('Botines Timberland', 'Botines de cuero ideales para clima frío', 119.99, 100, 7),
('Sandalias Puma', 'Sandalias cómodas para el verano', 34.99, 150, 7),

-- Hogar y Muebles -> Muebles para Sala
('Sofá Sealy', 'Sofá de tres puestos con cojines cómodos', 499.00, 30, 8),
('Mesa de Centro Ikea', 'Mesa de centro moderna y funcional', 129.00, 60, 8),
('Sillón reclinable Homeline', 'Sillón de piel con reclinación automática', 299.99, 40, 8),
('Estantería modular Amazon Basics', 'Estantería de madera para libros y objetos', 89.99, 100, 8),

-- Hogar y Muebles -> Muebles para Cocina
('Mesa comedor madera', 'Mesa de comedor de 6 puestos, madera de pino', 199.00, 70, 9),
('Alacena Ikea', 'Alacena para almacenar alimentos y utensilios', 79.00, 80, 9),
('Cocinero de gas Whirlpool', 'Cocinero a gas con 4 hornillas y horno', 399.99, 50, 9),

-- Deportes y Fitness -> Equipos de Gimnasio
('Bicicleta Estática', 'Bicicleta estática con 12 niveles de resistencia', 199.00, 120, 12),
('Mancuernas Ajustables', 'Juego de mancuernas de peso ajustable', 79.00, 200, 12),
('Cinta de Correr NordicTrack', 'Cinta de correr con pantalla táctil y programas de ejercicio', 899.00, 30, 12);

SELECT * FROM productos -- para validar


--Registros para TIENDAS:
SELECT * FROM tiendas
INSERT INTO tiendas (nombre, direccion, ciudad, departamento)
VALUES('Tienda Lima Centro', 'Av. Pardo y Aliaga 100', 'Lima', 'Lima'),
('Tienda San Isidro', 'Av. Juan de Arona 500', 'San Isidro', 'Lima'),
('Tienda Miraflores', 'Av. Pardo 900', 'Miraflores', 'Lima'),
('Tienda Barranco', 'Av. Pedro de Osma 650', 'Barranco', 'Lima'),
('Tienda Callao', 'Av. Oscar R. Benavides 1500', 'Callao', 'Callao'),
('Tienda Arequipa', 'Calle San José 200', 'Arequipa', 'Arequipa'),
('Tienda Trujillo', 'Av. Nicolás de Piérola 300', 'Trujillo', 'La Libertad'),
('Tienda Cusco', 'Calle Plateros 400', 'Cusco', 'Cusco'),
('Tienda Piura', 'Av. Sánchez Cerro 500', 'Piura', 'Piura'),
('Tienda Chiclayo', 'Calle Independencia 600', 'Chiclayo', 'Lambayeque');

SELECT * FROM tiendas


DELETE FROM pedidos; -- para borrar los datos
DBCC CHECKIDENT ('pedidos', RESEED, 0); -- para reiniciar el conteo del ID y que no empiece con un número alto al ingresar nuevamente la data

--Registros de PEDIDOS:
SELECT * FROM pedidos

INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (10, 5, '2024-12-05 11:30:00', 279.80, 'Pendiente'); -- Producto ID: 1, 2 unidades de producto (139.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (14, 1, '2024-12-06 12:00:00', 459.90, 'Enviado'); -- Producto ID: 3, 3 unidades de producto (153.30 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (7, 8, '2024-12-07 14:00:00', 419.90, 'Entregado'); -- Producto ID: 5, 4 unidades de producto (104.98 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (1, 2, '2024-12-08 09:45:00', 279.90, 'Enviado'); -- Producto ID: 2, 3 unidades de producto (93.30 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (19, 4, '2024-12-08 10:30:00', 249.80, 'Pendiente'); -- Producto ID: 4, 2 unidades de producto (124.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (13, 7, '2024-12-09 13:15:00', 409.80, 'Enviado'); -- Producto ID: 6, 4 unidades de producto (102.45 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (3, 9, '2024-12-09 15:00:00', 179.90, 'Pendiente'); -- Producto ID: 8, 1 unidad de producto (179.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (5, 10, '2024-12-10 09:30:00', 359.80, 'Enviado'); -- Producto ID: 10, 4 unidades de producto (89.95 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (18, 3, '2024-12-11 11:20:00', 349.90, 'Pendiente'); -- Producto ID: 9, 3 unidades de producto (116.63 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (9, 6, '2024-12-12 12:00:00', 149.90, 'Enviado'); -- Producto ID: 11, 1 unidad de producto (149.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (2, 4, '2024-12-12 13:45:00', 449.70, 'Pendiente'); -- Producto ID: 4, 3 unidades de producto (149.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (20, 5, '2024-12-13 10:00:00', 209.90, 'Enviado'); -- Producto ID: 12, 2 unidades de producto (104.95 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (17, 8, '2024-12-13 12:00:00', 329.90, 'Entregado'); -- Producto ID: 13, 4 unidades de producto (82.47 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (24, 3, '2024-12-14 09:30:00', 259.80, 'Enviado'); -- Producto ID: 3, 2 unidades de producto (129.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (11, 7, '2024-12-14 11:10:00', 189.90, 'Pendiente'); -- Producto ID: 7, 1 unidad de producto (189.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (8, 6, '2024-12-14 13:00:00', 359.90, 'Entregado'); -- Producto ID: 5, 3 unidades de producto (119.97 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (5, 2, '2024-12-15 10:40:00', 299.90, 'Enviado'); -- Producto ID: 4, 3 unidades de producto (99.97 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (22, 4, '2024-12-16 09:20:00', 169.90, 'Entregado'); -- Producto ID: 6, 1 unidad de producto (169.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (21, 10, '2024-12-16 11:00:00', 219.90, 'Enviado'); -- Producto ID: 1, 2 unidades de producto (109.95 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (16, 3, '2024-12-17 12:15:00', 249.80, 'Pendiente'); -- Producto ID: 8, 2 unidades de producto (124.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (15, 8, '2024-12-18 10:10:00', 269.80, 'Enviado'); -- Producto ID: 12, 2 unidades de producto (134.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (12, 5, '2024-12-18 13:30:00', 399.90, 'Entregado'); -- Producto ID: 9, 3 unidades de producto (133.30 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (6, 9, '2024-12-19 10:40:00', 219.90, 'Pendiente'); -- Producto ID: 3, 1 unidad de producto (219.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (4, 7, '2024-12-19 12:15:00', 329.90, 'Entregado'); -- Producto ID: 5, 2 unidades de producto (164.95 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (23, 2, '2024-12-19 14:10:00', 269.90, 'Enviado'); -- Producto ID: 10, 2 unidades de producto (134.95 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (18, 1, '2024-12-20 09:30:00', 179.90, 'Pendiente'); -- Producto ID: 7, 1 unidad de producto (179.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (13, 6, '2024-12-21 11:00:00', 419.80, 'Enviado'); -- Producto ID: 6, 3 unidades de producto (139.93 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (3, 9, '2024-12-21 13:30:00', 269.80, 'Pendiente'); -- Producto ID: 12, 2 unidades de producto (134.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (5, 2, '2024-12-22 11:00:00', 249.90, 'Enviado'); -- Producto ID: 1, 2 unidades de producto (124.95 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (2, 4, '2024-12-23 10:20:00', 359.80, 'Entregado'); -- Producto ID: 5, 3 unidades de producto (119.93 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (9, 6, '2024-12-24 11:15:00', 239.90, 'Pendiente'); -- Producto ID: 4, 2 unidades de producto (119.95 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (15, 7, '2024-12-24 12:30:00', 209.90, 'Enviado'); -- Producto ID: 9, 1 unidad de producto (209.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (19, 6, '2024-12-25 14:30:00', 179.90, 'Entregado'); -- Producto ID: 12, 1 unidad de producto (179.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (1, 3, '2024-12-26 09:20:00', 299.90, 'Pendiente'); -- Producto ID: 1, 3 unidades de producto (99.97 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (11, 9, '2024-12-26 11:40:00', 269.80, 'Enviado'); -- Producto ID: 2, 2 unidades de producto (134.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (2, 7, '2024-12-27 10:30:00', 219.90, 'Entregado'); -- Producto ID: 8, 1 unidad de producto (219.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (16, 8, '2024-12-28 09:10:00', 449.90, 'Pendiente'); -- Producto ID: 13, 4 unidades de producto (112.48 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (23, 10, '2024-12-29 10:50:00', 299.90, 'Enviado'); -- Producto ID: 3, 3 unidades de producto (99.97 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (12, 4, '2024-12-30 11:00:00', 269.80, 'Entregado'); -- Producto ID: 6, 2 unidades de producto (134.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (6, 2, '2024-12-30 13:40:00', 179.90, 'Pendiente'); -- Producto ID: 11, 1 unidad de producto (179.90 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (7, 3, '2024-12-31 10:30:00', 359.90, 'Entregado'); -- Producto ID: 9, 3 unidades de producto (119.97 c/u)
INSERT INTO pedidos (cliente_id, tienda_id, fecha_pedido, total, estado) 
VALUES (4, 9, '2024-12-31 12:00:00', 269.90, 'Enviado'); -- Producto ID: 4, 2 unidades de producto (134.95 c/u)

SELECT * FROM pedidos


--Registros para la tabla DETALLES_PEDIDO (que tiene relación con los datos de pedidos y sus comentarios):
SELECT * FROM detalles_pedido

INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (1, 1, 2, 279.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (2, 3, 3, 459.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (3, 5, 4, 419.92);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (4, 2, 3, 279.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (5, 4, 2, 249.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (6, 6, 4, 409.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (7, 8, 1, 179.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (8, 10, 4, 359.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (9, 9, 3, 349.89);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (10, 11, 1, 149.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (11, 4, 3, 374.70);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (12, 12, 2, 209.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (13, 13, 4, 329.88);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (14, 3, 2, 259.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (15, 7, 1, 189.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (16, 5, 3, 359.91);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (17, 4, 3, 299.91);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (18, 6, 1, 169.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (19, 1, 2, 219.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (20, 8, 2, 249.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (21, 12, 2, 269.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (22, 9, 3, 349.89);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (23, 3, 1, 219.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (24, 5, 2, 329.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (25, 10, 2, 269.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (26, 7, 1, 179.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (27, 6, 3, 419.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (28, 12, 2, 269.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (29, 1, 2, 249.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (30, 5, 3, 359.91);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (31, 4, 2, 239.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (32, 9, 1, 209.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (33, 12, 1, 179.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (34, 1, 3, 299.91);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (35, 2, 2, 269.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (36, 8, 1, 219.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (37, 13, 4, 329.92);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (38, 3, 3, 299.91);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (39, 6, 2, 269.80);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (40, 11, 1, 179.90);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (41, 9, 3, 359.91);
INSERT INTO detalles_pedido (pedido_id, producto_id, cantidad, precio) 
VALUES (42, 4, 2, 269.80);

SELECT * FROM detalles_pedido


--Registros para Metódos de Pago:

INSERT INTO metodo_pago (nombre) 
VALUES
('Tarjeta de crédito'),
('Tarjeta de débito'),
('QR Yape/Plin'),
('Banca por internet'),
('PayPal'),
('Bitcoin'),
('Transferencia bancaria');

SELECT * FROM metodo_pago


--Registros para la tabla PAGOS:

INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (1, 4, 279.80, 'Confirmado', '2024-12-05 11:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (2, 1, 459.90, 'Confirmado', '2024-12-06 12:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (3, 2, 419.90, 'En Proceso', '2024-12-07 14:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (4, 3, 279.90, 'Confirmado', '2024-12-08 09:45:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (5, 7, 249.80, 'Confirmado', '2024-12-08 10:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (6, 4, 409.80, 'En Proceso', '2024-12-09 13:15:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (7, 5, 179.90, 'Rechazado', '2024-12-09 15:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (8, 1, 359.80, 'Confirmado', '2024-12-10 09:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (9, 2, 349.90, 'Confirmado', '2024-12-11 11:20:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (10, 4, 149.90, 'En Proceso', '2024-12-12 12:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (11, 6, 449.70, 'Confirmado', '2024-12-12 13:45:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (12, 5, 209.90, 'Confirmado', '2024-12-13 10:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (13, 1, 329.90, 'Rechazado', '2024-12-13 12:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (14, 3, 259.80, 'Confirmado', '2024-12-14 09:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (15, 7, 189.90, 'En Proceso', '2024-12-14 11:10:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (16, 2, 359.90, 'Confirmado', '2024-12-14 13:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (17, 5, 299.90, 'Confirmado', '2024-12-15 10:40:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (18, 6, 169.90, 'En Proceso', '2024-12-16 09:20:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (19, 7, 219.90, 'Confirmado', '2024-12-16 11:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (20, 3, 249.80, 'Confirmado', '2024-12-17 12:15:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (21, 1, 269.80, 'Confirmado', '2024-12-18 10:10:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (22, 2, 399.90, 'Confirmado', '2024-12-18 13:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (23, 4, 219.90, 'Rechazado', '2024-12-19 10:40:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (24, 5, 329.90, 'Confirmado', '2024-12-19 12:15:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (25, 7, 269.90, 'En Proceso', '2024-12-19 14:10:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (26, 1, 179.90, 'Confirmado', '2024-12-20 09:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (27, 3, 419.80, 'En Proceso', '2024-12-21 11:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (28, 2, 269.80, 'Confirmado', '2024-12-21 13:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (29, 4, 249.90, 'Confirmado', '2024-12-22 11:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (30, 7, 359.80, 'Confirmado', '2024-12-23 10:20:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (31, 5, 239.90, 'En Proceso', '2024-12-24 11:15:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (32, 1, 209.90, 'Confirmado', '2024-12-24 12:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (33, 6, 179.90, 'Confirmado', '2024-12-25 14:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (34, 4, 299.90, 'En Proceso', '2024-12-26 09:20:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (35, 3, 269.80, 'Rechazado', '2024-12-26 11:40:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (36, 5, 219.90, 'Confirmado', '2024-12-27 10:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (37, 1, 449.90, 'Confirmado', '2024-12-28 09:10:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (38, 2, 299.90, 'En Proceso', '2024-12-29 10:50:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (39, 3, 269.80, 'Confirmado', '2024-12-30 11:00:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (40, 6, 179.90, 'Rechazado', '2024-12-30 14:30:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (41, 4, 359.91, 'En Proceso', '2024-12-31 14:20:00');
INSERT INTO Pagos (pedido_id, metodo_pago_id, importe, estado, fecha_pago)
VALUES (42, 2, 269.80, 'Confirmado', '2024-12-31 16:00:00');

SELECT * FROM pagos


--Registros para la tabla ENVÍOS. Solo se generarán aquellos que tengan el estado de pago en En Proceso o Confirmado:

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (1, 'Av. Pardo y Aliaga 123', 'Lima', 'Lima', 'Referencia 1', 'En Preparación', '2024-12-05 11:30:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (2, 'Calle Las Flores 456', 'Arequipa', 'Arequipa', 'Referencia 2', 'En Preparación', '2024-12-06 12:00:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (3, 'Jr. Los Olivos 789', 'Cusco', 'Cusco', 'Referencia 3', 'En Preparación', '2024-12-07 14:00:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (4, 'Av. Universitaria 101', 'Trujillo', 'La Libertad', 'Referencia 4', 'En Tránsito', '2024-12-08 09:45:00', '2024-12-11 09:45:00');

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (5, 'Calle Las Palmas 222', 'Lima', 'Lima', 'Referencia 5', 'En Preparación', '2024-12-08 10:30:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (6, 'Jr. San Martín 444', 'Arequipa', 'Arequipa', 'Referencia 6', 'En Preparación', '2024-12-09 13:15:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (7, 'Av. Javier Prado 567', 'Lima', 'Lima', 'Referencia 7', 'Rechazado', '2024-12-09 15:00:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (8, 'Calle Las Acacias 678', 'Lima', 'Lima', 'Referencia 8', 'En Preparación', '2024-12-10 09:30:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (9, 'Av. Pescadores 345', 'Piura', 'Piura', 'Referencia 9', 'En Tránsito', '2024-12-11 11:20:00', '2024-12-14 11:20:00');

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (10, 'Calle Los Jazmines 223', 'Lima', 'Lima', 'Referencia 10', 'En Preparación', '2024-12-12 12:00:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (11, 'Av. Brasil 321', 'Lima', 'Lima', 'Referencia 11', 'En Tránsito', '2024-12-12 13:45:00', '2024-12-15 13:45:00');

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (12, 'Calle San Juan 555', 'Arequipa', 'Arequipa', 'Referencia 12', 'En Preparación', '2024-12-13 10:00:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (13, 'Calle Sol 888', 'Cusco', 'Cusco', 'Referencia 13', 'En Preparación', '2024-12-13 12:00:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (14, 'Av. Las Lomas 100', 'Lima', 'Lima', 'Referencia 14', 'En Tránsito', '2024-12-14 09:30:00', '2024-12-17 09:30:00');

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (15, 'Calle Los Pinos 232', 'Lima', 'Lima', 'Referencia 15', 'Rechazado', '2024-12-14 11:10:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (16, 'Av. Las Orquídeas 543', 'Arequipa', 'Arequipa', 'Referencia 16', 'En Preparación', '2024-12-14 13:00:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (17, 'Calle Los Jazmines 654', 'Lima', 'Lima', 'Referencia 17', 'En Tránsito', '2024-12-15 10:40:00', '2024-12-18 10:40:00');

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (18, 'Av. Pardo 987', 'Piura', 'Piura', 'Referencia 18', 'En Preparación', '2024-12-16 09:20:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (19, 'Calle Los Andes 432', 'Lima', 'Lima', 'Referencia 19', 'En Preparación', '2024-12-16 11:00:00', NULL);

INSERT INTO envios (pedido_id, direccion_envio, ciudad_envio, departamento, referencia, estado_envio, fecha_envio, fecha_entrega)
VALUES (20, 'Av. Los Álamos 654', 'Lima', 'Lima', 'Referencia 20', 'En Tránsito', '2024-12-17 12:15:00', '2024-12-20 12:15:00');

SELECT * FROM envios


--Registros para STOCK TIENDA:
