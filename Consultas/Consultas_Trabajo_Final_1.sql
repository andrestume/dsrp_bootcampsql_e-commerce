USE dsrp_ecommerce_g13

-- 1. Total de pedidos realizados
SELECT COUNT(*) AS Total_Pedidos
FROM pedidos;


-- 2. Productos con stock bajo (menos de 50 unidades)
SELECT nombre, stock
FROM productos
WHERE stock < 50;


-- 3. Informaci�n de clientes recientes (registrados los �ltimos 10 d�as)
SELECT id, nombre, apellido_paterno, apellido_materno, email, fecha_registro
FROM clientes
WHERE fecha_registro >= DATEADD(DAY, -10, GETDATE());


-- 4. Total de ventas por tienda
SELECT t.nombre AS Tienda, SUM(p.total) AS Total_Ventas
FROM pedidos p
JOIN tiendas t ON p.tienda_id = t.id
GROUP BY t.nombre
ORDER BY total_ventas desc



-- 5. Productos m�s vendidos (por cantidad)
SELECT pr.nombre AS Producto, SUM(dp.cantidad) AS Cantidad_Vendida
FROM detalles_pedido dp
JOIN productos pr ON dp.producto_id = pr.id
GROUP BY pr.nombre
ORDER BY Cantidad_Vendida DESC;


-- 6. Detalles de pagos confirmados
SELECT p.id AS Pago_ID, p.importe, mp.nombre AS Metodo_Pago, p.fecha_pago, pe.id AS Pedido_ID
FROM pagos p
JOIN metodo_pago mp ON p.metodo_pago_id = mp.id
JOIN pedidos pe ON p.pedido_id = pe.id
WHERE p.estado = 'Confirmado';


-- 7. Ventas por fecha espec�fica
SELECT YEAR(fecha_pedido) AS A�o, MONTH(fecha_pedido) AS Mes, SUM(total) AS Total_Ventas
FROM pedidos
GROUP BY YEAR(fecha_pedido), MONTH(fecha_pedido)
ORDER BY A�o DESC, Mes DESC;


-- 8. An�lisis de stock por tienda y producto
SELECT t.nombre AS Tienda, pr.nombre AS Producto, st.cantidad AS Stock_Disponible
FROM stock_tienda st
JOIN tiendas t ON st.tienda_id = t.id
JOIN productos pr ON st.producto_id = pr.id
ORDER BY t.nombre, pr.nombre;


-- 9. An�lisis de env�os pendientes y entregados por clientes
SELECT c.nombre AS Cliente, c.apellido_paterno, e.estado_envio, COUNT(e.id) AS Cantidad_Envios
FROM envios e
JOIN pedidos p ON e.pedido_id = p.id
JOIN clientes c ON p.cliente_id = c.id
GROUP BY c.nombre, c.apellido_paterno, e.estado_envio
ORDER BY c.nombre, e.estado_envio;


-- 10. An�lisis de rentabilidad por producto
SELECT pr.nombre AS Producto, 
       SUM(dp.cantidad) AS Cantidad_Vendida, 
       SUM(dp.cantidad * dp.precio) AS Ingresos_Generados,
       (SUM(dp.cantidad * dp.precio) / SUM(dp.cantidad)) AS Precio_Promedio
FROM detalles_pedido dp
JOIN productos pr ON dp.producto_id = pr.id
GROUP BY pr.nombre
ORDER BY Ingresos_Generados DESC;


-- 11. An�lisis de clientes frecuentes
SELECT c.id AS Cliente_ID, 
       c.nombre AS Cliente, 
       c.apellido_paterno, 
       COUNT(p.id) AS Total_Pedidos, 
       SUM(p.total) AS Total_Gastado
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nombre, c.apellido_paterno
HAVING COUNT(p.id) > 1  -- Solo mostrar clientes con m�s de un pedido
ORDER BY Total_Gastado DESC;


-- 12. An�lisis de ventas mensuales por tienda (aplicar�a para periodos m�s amplios)
SELECT t.nombre AS Tienda,
       YEAR(p.fecha_pedido) AS A�o,
       MONTH(p.fecha_pedido) AS Mes,
       SUM(p.total) AS Total_Ventas
FROM pedidos p
JOIN tiendas t ON p.tienda_id = t.id
GROUP BY t.nombre, YEAR(p.fecha_pedido), MONTH(p.fecha_pedido)
ORDER BY Tienda, A�o DESC, Mes DESC;


-- 13. Comparaci�n de productos m�s vendidos por categor�a
SELECT c.nombre AS Categoria, 
       pr.nombre AS Producto, 
       SUM(dp.cantidad) AS Cantidad_Vendida
FROM detalles_pedido dp
JOIN productos pr ON dp.producto_id = pr.id
JOIN categorias c ON pr.categoria_id = c.id
GROUP BY c.nombre, pr.nombre
ORDER BY c.nombre, Cantidad_Vendida DESC;


-- 14. An�lisis de productos sin stock por tienda
SELECT t.nombre AS Tienda, 
       pr.nombre AS Producto, 
       st.cantidad AS Stock_Disponible
FROM stock_tienda st
JOIN tiendas t ON st.tienda_id = t.id
JOIN productos pr ON st.producto_id = pr.id
WHERE st.cantidad = 0
ORDER BY t.nombre, pr.nombre;


-- 15. Promedio de tiempo de env�o por tienda
SELECT t.nombre AS Tienda,
       AVG(DATEDIFF(DAY, e.fecha_envio, e.fecha_entrega)) AS Promedio_Tiempo_Envio
FROM envios e
JOIN tiendas t ON e.pedido_id IN (SELECT id FROM pedidos WHERE tienda_id = t.id)
WHERE e.fecha_entrega IS NOT NULL
GROUP BY t.nombre
ORDER BY Promedio_Tiempo_Envio DESC;


-- 16. An�lisis de pedidos por estado de env�o
SELECT t.nombre AS Tienda,
       e.estado_envio AS Estado_Envio,
       COUNT(e.id) AS Cantidad_Pedidos
FROM envios e
JOIN pedidos p ON e.pedido_id = p.id
JOIN tiendas t ON p.tienda_id = t.id
GROUP BY t.nombre, e.estado_envio
ORDER BY t.nombre, Estado_Envio;


-- 17. Comparaci�n de ventas por m�todo de pago
SELECT mp.nombre AS Metodo_Pago, 
       SUM(pa.importe) AS Total_Ventas
FROM pagos pa
JOIN metodo_pago mp ON pa.metodo_pago_id = mp.id
GROUP BY mp.nombre
ORDER BY Total_Ventas DESC;


-- 18. An�lisis de evoluci�n de ventas por mes y tiendas
SELECT t.nombre AS Tienda,
       YEAR(p.fecha_pedido) AS Anio,
       MONTH(p.fecha_pedido) AS Mes,
       SUM(p.total) AS Total_Ventas
FROM pedidos p
JOIN tiendas t ON p.tienda_id = t.id
GROUP BY t.nombre, YEAR(p.fecha_pedido), MONTH(p.fecha_pedido)
ORDER BY t.nombre, Anio DESC, Mes DESC;


-- 19. Clientes con mayor gasto promedio por pedido
SELECT c.id AS Cliente_ID, 
       c.nombre AS Cliente, 
       c.apellido_paterno, 
       AVG(p.total) AS Gasto_Promedio
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.id, c.nombre, c.apellido_paterno
HAVING AVG(p.total) > 300
ORDER BY Gasto_Promedio DESC;


-- 20. Productos con el mayor n�mero de pedidos y su disponibilidad actual de stock
SELECT pr.nombre AS Producto, 
       COUNT(dp.pedido_id) AS Numero_Pedidos, 
       st.cantidad AS Stock_Disponible
FROM detalles_pedido dp
JOIN productos pr ON dp.producto_id = pr.id
JOIN stock_tienda st ON pr.id = st.producto_id
GROUP BY pr.nombre, st.cantidad
ORDER BY Numero_Pedidos DESC;
