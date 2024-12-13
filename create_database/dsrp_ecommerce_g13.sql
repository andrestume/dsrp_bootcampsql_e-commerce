CREATE DATABASE dsrp_ecommerce_g13;
GO

USE dsrp_ecommerce_g13;
GO

--Create CLIENTES
CREATE TABLE clientes(
id INT PRIMARY KEY IDENTITY(1,1),
tipo_documento VARCHAR(50) NOT NULL,
numero_documento VARCHAR(50) UNIQUE NOT NULL,
apellido_paterno VARCHAR(100) NOT NULL,
apellido_materno VARCHAR(100) NOT NULL,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
direccion VARCHAR(255) NOT NULL,
ciudad VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL,
telefono VARCHAR(15) NOT NULL,
fecha_nacimiento DATE NULL,
fecha_registro DATETIME DEFAULT GETDATE()
);

--Create CATEGORIAS
CREATE TABLE categorias (
id INT PRIMARY KEY IDENTITY(1,1),
nombre VARCHAR(255) UNIQUE NOT NULL,
categoria_padre_id INT NULL,
CONSTRAINT FK_categoria_padre_id FOREIGN KEY (categoria_padre_id) REFERENCES categorias(id)
);

--Create PRODUCTOS
CREATE TABLE productos (
id INT PRIMARY KEY IDENTITY(1,1),
nombre VARCHAR(255) UNIQUE NOT NULL,
descripcion TEXT,
precio DECIMAL(10, 2) NOT NULL,
stock INT NOT NULL,
categoria_id INT NOT NULL,
CONSTRAINT FK_categoria_id_productos FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

--Create TIENDAS
CREATE TABLE tiendas (
id INT PRIMARY KEY IDENTITY(1,1),
nombre VARCHAR(255) UNIQUE NOT NULL,
direccion VARCHAR(255) NOT NULL,
ciudad VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL
);

--Create PEDIDOS
CREATE TABLE pedidos (
id INT PRIMARY KEY IDENTITY(1,1),
cliente_id INT NOT NULL,
tienda_id INT NOT NULL,
fecha_pedido DATETIME DEFAULT GETDATE() NOT NULL,
total DECIMAL(10, 2) NOT NULL,
estado VARCHAR(50) NOT NULL,
CONSTRAINT FK_cliente_id_pedidos FOREIGN KEY (cliente_id) REFERENCES clientes(id),
CONSTRAINT FK_tienda_id_pedidos FOREIGN KEY (tienda_id) REFERENCES tiendas(id)
);

--Create DETALLES_PEDIDO
CREATE TABLE detalles_pedido (
id INT PRIMARY KEY IDENTITY(1,1),
pedido_id INT NOT NULL,
producto_id INT NOT NULL,
cantidad INT NOT NULL,
precio DECIMAL(10, 2) NOT NULL,
CONSTRAINT FK_pedido_id_detalles_pedido FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
CONSTRAINT FK_producto_id_detalles_pedido FOREIGN KEY (producto_id) REFERENCES productos(id)
);

--Create METODO_PAGO
CREATE TABLE metodo_pago (
id INT PRIMARY KEY IDENTITY(1,1),
nombre VARCHAR(50) NOT NULL
);

--Create PAGOS
CREATE TABLE Pagos (
id INT PRIMARY KEY IDENTITY(1,1),
pedido_id INT NOT NULL,
metodo_pago_id INT NOT NULL,
importe DECIMAL(10, 2) NOT NULL,
estado VARCHAR(50) NOT NULL,
fecha_pago DATETIME DEFAULT GETDATE() NOT NULL,
CONSTRAINT FK_pedido_id_pagos FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
CONSTRAINT FK_metodo_pago_id_pagos FOREIGN KEY (metodo_pago_id) REFERENCES metodo_pago(id)
);

--Create ENVIOS
CREATE TABLE envios(
id INT PRIMARY KEY IDENTITY(1,1),
pedido_id INT,
direccion_envio VARCHAR(255) NOT NULL,
ciudad_envio VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL,
referencia VARCHAR(100) NOT NULL,
estado_envio VARCHAR(50) NOT NULL,
fecha_envio DATETIME DEFAULT GETDATE(),
fecha_entrega DATETIME,
CONSTRAINT FK_pedido_id_envios FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);

--Create STOCK_TIENDA
CREATE TABLE stock_tienda (
id INT PRIMARY KEY IDENTITY(1,1),
producto_id INT NOT NULL,
tienda_id INT NOT NULL,
cantidad INT NOT NULL,
CONSTRAINT FK_producto_id_stock_tienda FOREIGN KEY (producto_id) REFERENCES productos(id),
CONSTRAINT FK_tienda_id_stock_tienda FOREIGN KEY (tienda_id) REFERENCES tiendas(id)
);



--Una vez creadas las tablas, identificaremos los campos que tendrán valores predeterminados y los configuraremos de esa manera

--Estado del pedido: Pendiente, Enviado, Entregado, Rechazado
ALTER TABLE pedidos
ADD CONSTRAINT check_estado CHECK (estado IN ('Pendiente','Enviado','Entregado','Rechazado'));

--Estado del pago realizado: En Proceso, Confirmado, Rechazado
ALTER TABLE pagos
ADD CONSTRAINT check_estado_pago CHECK (estado IN ('En Proceso','Confirmado','Rechazado'));

--Estado del envío del pedido: En Proceso, Confirmado, Rechazado
ALTER TABLE envios
ADD CONSTRAINT check_estado_envio CHECK (estado_envio IN ('En Preparación','En Tránsito','Entregado','Rechazado'));