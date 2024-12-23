USE [master]
GO
/****** Object:  Database [dsrp_ecommerce_g13]    Script Date: 12/12/2024 23:56:15 ******/
CREATE DATABASE [dsrp_ecommerce_g13]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dsrp_ecommerce_g13', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\dsrp_ecommerce_g13.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dsrp_ecommerce_g13_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\dsrp_ecommerce_g13_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dsrp_ecommerce_g13].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET ARITHABORT OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET RECOVERY FULL 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET  MULTI_USER 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'dsrp_ecommerce_g13', N'ON'
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET QUERY_STORE = ON
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [dsrp_ecommerce_g13]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[categoria_padre_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo_documento] [varchar](50) NOT NULL,
	[numero_documento] [varchar](50) NOT NULL,
	[apellido_paterno] [varchar](100) NOT NULL,
	[apellido_materno] [varchar](100) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[direccion] [varchar](255) NOT NULL,
	[ciudad] [varchar](100) NOT NULL,
	[departamento] [varchar](100) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
	[fecha_nacimiento] [date] NULL,
	[fecha_registro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[numero_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalles_pedido]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_pedido](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pedido_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envios]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pedido_id] [int] NULL,
	[direccion_envio] [varchar](255) NOT NULL,
	[ciudad_envio] [varchar](100) NOT NULL,
	[departamento] [varchar](100) NOT NULL,
	[referencia] [varchar](100) NOT NULL,
	[estado_envio] [varchar](50) NOT NULL,
	[fecha_envio] [datetime] NULL,
	[fecha_entrega] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[metodo_pago]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[metodo_pago](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pedido_id] [int] NOT NULL,
	[metodo_pago_id] [int] NOT NULL,
	[importe] [decimal](10, 2) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[fecha_pago] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedidos]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cliente_id] [int] NOT NULL,
	[tienda_id] [int] NOT NULL,
	[fecha_pedido] [datetime] NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
	[estado] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[descripcion] [text] NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[stock] [int] NOT NULL,
	[categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stock_tienda]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stock_tienda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producto_id] [int] NOT NULL,
	[tienda_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tiendas]    Script Date: 12/12/2024 23:56:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tiendas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[direccion] [varchar](255) NOT NULL,
	[ciudad] [varchar](100) NOT NULL,
	[departamento] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clientes] ADD  DEFAULT (getdate()) FOR [fecha_registro]
GO
ALTER TABLE [dbo].[envios] ADD  DEFAULT (getdate()) FOR [fecha_envio]
GO
ALTER TABLE [dbo].[Pagos] ADD  DEFAULT (getdate()) FOR [fecha_pago]
GO
ALTER TABLE [dbo].[pedidos] ADD  DEFAULT (getdate()) FOR [fecha_pedido]
GO
ALTER TABLE [dbo].[categorias]  WITH CHECK ADD  CONSTRAINT [FK_categoria_padre_id] FOREIGN KEY([categoria_padre_id])
REFERENCES [dbo].[categorias] ([id])
GO
ALTER TABLE [dbo].[categorias] CHECK CONSTRAINT [FK_categoria_padre_id]
GO
ALTER TABLE [dbo].[detalles_pedido]  WITH CHECK ADD  CONSTRAINT [FK_pedido_id_detalles_pedido] FOREIGN KEY([pedido_id])
REFERENCES [dbo].[pedidos] ([id])
GO
ALTER TABLE [dbo].[detalles_pedido] CHECK CONSTRAINT [FK_pedido_id_detalles_pedido]
GO
ALTER TABLE [dbo].[detalles_pedido]  WITH CHECK ADD  CONSTRAINT [FK_producto_id_detalles_pedido] FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id])
GO
ALTER TABLE [dbo].[detalles_pedido] CHECK CONSTRAINT [FK_producto_id_detalles_pedido]
GO
ALTER TABLE [dbo].[envios]  WITH CHECK ADD  CONSTRAINT [FK_pedido_id_envios] FOREIGN KEY([pedido_id])
REFERENCES [dbo].[pedidos] ([id])
GO
ALTER TABLE [dbo].[envios] CHECK CONSTRAINT [FK_pedido_id_envios]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_metodo_pago_id_pagos] FOREIGN KEY([metodo_pago_id])
REFERENCES [dbo].[metodo_pago] ([id])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_metodo_pago_id_pagos]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_pedido_id_pagos] FOREIGN KEY([pedido_id])
REFERENCES [dbo].[pedidos] ([id])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_pedido_id_pagos]
GO
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [FK_cliente_id_pedidos] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[clientes] ([id])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [FK_cliente_id_pedidos]
GO
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [FK_tienda_id_pedidos] FOREIGN KEY([tienda_id])
REFERENCES [dbo].[tiendas] ([id])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [FK_tienda_id_pedidos]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_categoria_id_productos] FOREIGN KEY([categoria_id])
REFERENCES [dbo].[categorias] ([id])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_categoria_id_productos]
GO
ALTER TABLE [dbo].[stock_tienda]  WITH CHECK ADD  CONSTRAINT [FK_producto_id_stock_tienda] FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id])
GO
ALTER TABLE [dbo].[stock_tienda] CHECK CONSTRAINT [FK_producto_id_stock_tienda]
GO
ALTER TABLE [dbo].[stock_tienda]  WITH CHECK ADD  CONSTRAINT [FK_tienda_id_stock_tienda] FOREIGN KEY([tienda_id])
REFERENCES [dbo].[tiendas] ([id])
GO
ALTER TABLE [dbo].[stock_tienda] CHECK CONSTRAINT [FK_tienda_id_stock_tienda]
GO
ALTER TABLE [dbo].[envios]  WITH CHECK ADD  CONSTRAINT [check_estado_envio] CHECK  (([estado_envio]='Rechazado' OR [estado_envio]='Entregado' OR [estado_envio]='En Tránsito' OR [estado_envio]='En Preparación'))
GO
ALTER TABLE [dbo].[envios] CHECK CONSTRAINT [check_estado_envio]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [check_estado_pago] CHECK  (([estado]='Rechazado' OR [estado]='Confirmado' OR [estado]='En Proceso'))
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [check_estado_pago]
GO
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [check_estado] CHECK  (([estado]='Rechazado' OR [estado]='Entregado' OR [estado]='Enviado' OR [estado]='Pendiente'))
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [check_estado]
GO
USE [master]
GO
ALTER DATABASE [dsrp_ecommerce_g13] SET  READ_WRITE 
GO
