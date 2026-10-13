-- Productos con su categoria

SELECT p.nombre,
       c.nombre AS categoria
FROM productos p
JOIN categorias c
ON p.categoria_id = c.id
ORDER BY p.nombre;
-- Productos con menos de 5 unidades

SELECT *
FROM productos
WHERE stock < 5;
-- Precio promedio por categoria

SELECT c.nombre,
       AVG(p.precio) AS promedio
FROM categorias c
JOIN productos p
ON c.id = p.categoria_id
GROUP BY c.nombre;
-- Pedidos de un cliente

SELECT p.id,
       p.fecha,
       p.estado,
       c.nombre
FROM pedidos p
JOIN clientes c
ON p.cliente_id = c.id
WHERE c.id = 1;
-- Total de dinero por pedido

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
-- Eliminar cliente sin pedidos

DELETE FROM clientes
WHERE id NOT IN (
    SELECT cliente_id
    FROM pedidos
);
