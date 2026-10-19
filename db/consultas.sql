
-- 1. Productos con el nombre de su categoría
SELECT p.nombre,
       c.nombre AS categoria
FROM productos p
JOIN categorias c
ON p.categoria_id = c.id
ORDER BY p.nombre;
-- 2. Productos con menos de 5 unidades en stock
SELECT *
FROM productos
WHERE stock < 5;


SELECT c.nombre,
       AVG(p.precio) AS promedio
-- 3. Precio promedio por categoría

SELECT c.nombre,
       AVG(p.precio) AS promedio_precio

FROM categorias c
JOIN productos p
ON c.id = p.categoria_id
GROUP BY c.nombre;

SELECT p.id,
       p.fecha,
       p.estado,
       c.nombre


-- 4. Pedidos de un cliente con fecha y estado

SELECT c.nombre,
       p.fecha,
       p.estado

FROM pedidos p
JOIN clientes c
ON p.cliente_id = c.id
WHERE c.id = 1;

-- 5. Total en dinero de cada pedido

SELECT pedido_id,
       SUM(cantidad * precio_unitario) AS total
FROM detalle_pedido
GROUP BY pedido_id;
-- Clientes con mas de 2 pedidos

SELECT c.nombre,
       COUNT(*) AS cantidad
FROM clientes c
JOIN pedidos p
ON c.id=p.cliente_id
GROUP BY c.nombre
HAVING COUNT(*) > 2;



-- 6. Clientes con más de 2 pedidos

SELECT c.nombre,
       COUNT(*) AS cantidad_pedidos
FROM clientes c
JOIN pedidos p
ON c.id = p.cliente_id
GROUP BY c.nombre
HAVING COUNT(*) > 2;

-- 7. Eliminar un cliente sin pedidos


DELETE FROM clientes
WHERE id NOT IN (
    SELECT cliente_id
    FROM pedidos
 main
