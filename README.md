## dsrp_bootcampsql_e-commerce
Repositorio que servirá para mapear el progreso del trabajo del curso de SQL Server en el Bootcamp de Análisis de Datos (DSRP) correspondiente al grupo 13.

En este trabajo, presentaremos el caso de una E-Commerce y la creación y gestión de la base de datos a través del uso de SQL Server.

# Caso: Gestión de la operación de un E-Commerce

Una nueva empresa de ventas en línea busca gestionar sus operaciones a través de un sistema que permita registrar y consultar información sobre sus clientes, sus productos (y el stock de los mismos), los pedidos que se generan, sus envíos y los pagos, así como de la tienda/almacén desde donde se gestionará la entrega/despacho. Se considera que tendrá más de una tienda/almacén, distintas categorías donde ofrecerán una gran variedad de productos, así como la opción de pago en línea.

### Requerimientos:

#### Clientes:
Se debe almacenar datos personales del cliente que se registre: nombre (apellidos por separado), tipo de documento, número de documento, correo electrónico, teléfono, dirección (especificando ciudad y departamento), fecha de nacimiento (que no será dato obligatorio), fecha de registro, verificando que el DNI no se pueda repetir para asegurar que es un registro único.

#### Productos:
Existe un catálogo de productos que estarán disponibles en ciertas ubicaciones (tienda/almacén), organizados por categorías y con información relevante como nombre, descripción, precio, stock.

#### Pedidos:
Se va a crear un pedido al proceder con la compra. La información relevante de un pedido debe contener la tienda/almacén desde donde se gestionará, la fecha y estado del pedido, así como el importe total.

#### Detalle del pedido:
Incluirá el detalle de los productos seleccionados (cantidades, precios).

#### Tiendas:
Incluirá la información de la tienda, como nombre del local/almacén, dirección, ciudad y departamento.

#### Pago del pedido:
Incluirá información del pago: método de pago, importe pagado, fecha de transacción y estado del pago (procesado o rechazado), considerando que se realizará el pago total al momento de la operación.

#### Envío del pedido:
Cuando se paga y confirma el pedido, se generarán datos como dirección de envío, ciudad, departamento, referencia, estado del envío (será PENDIENTE al inicio y se debe ir actualizando), fecha de envío y fecha de entrega (vacío hasta que se confirme la entrega y cambie el estado).

## Modelo Entidad-Relación

![V  FINAL  Grupo 13 - Trabajo 1 - E-Commerce](https://github.com/user-attachments/assets/1aba3a4e-23bd-4bf5-9ee8-0906aee615fc)


## Modelo Lógico

![Grupo-13_Gestión E-Commerce_Modelo Lógico](https://github.com/user-attachments/assets/8d2fbc77-134a-4c62-b565-9a8f44328b28)

Después de una revisión del caso y análisis de casuísticas del negocio, así como sugerencias de un mejor control en algunas tablas, decidimos modificar el modelo lógico inicial:

![Grupo-13---gestión-e-commerce-V3](https://github.com/user-attachments/assets/0e13bd3e-4b5b-4bf4-a9ca-112e666205e1)

Link: https://dbdesigner.page.link/4iU9AytZMFtoPBo67

## Modelo Físico

Habiendo hecho modificaciones en los modelos anteriores, el modelo físico finalmente quedó de la siguiente manera:

![image](https://github.com/user-attachments/assets/e5173863-f666-4a17-a16b-5083583627ee)
