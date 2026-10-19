INSERT INTO categorias(nombre) VALUES
('Lacteos'),
('Bebidas'),
('Snacks');

INSERT INTO productos(nombre,categoria_id,precio,stock) VALUES
('Leche',1,8.50,15),
('Queso',1,22.00,5),
('Yogurt',1,7.50,3),
('Mantequilla',1,10.00,10),

('Coca Cola',2,15.00,20),
('Pepsi',2,14.00,15),
('Agua',2,5.00,30),
('Jugo',2,9.00,4),

('Doritos',3,8.00,10),
('Lays',3,7.00,8),
('Pringles',3,18.00,2),
('Mani',3,4.50,40);

INSERT INTO clientes(nombre,telefono,email) VALUES
('Juan Perez','77711111','juan@gmail.com'),
('Maria Flores','77722222','maria@gmail.com'),
('Pedro Lopez','77733333','pedro@gmail.com'),
('Ana Rojas','77744444','ana@gmail.com'),
('Carlos Vega','77755555','carlos@gmail.com'),
('Lucia Torres','77766666','lucia@gmail.com');
INSERT INTO pedidos(cliente_id,fecha,estado) VALUES
(1,'2025-01-05','Entregado'),
(2,'2025-01-06','Pendiente'),
(3,'2025-01-08','Entregado'),
(1,'2025-01-09','En proceso'),
(4,'2025-01-10','Entregado'),
(5,'2025-01-11','Pendiente'),
(2,'2025-01-12','Entregado'),
(3,'2025-01-13','En proceso'),
(1,'2025-01-14','Entregado'),
(6,'2025-01-15','Pendiente');
INSERT INTO detalle_pedido
(pedido_id,producto_id,cantidad,precio_unitario)
VALUES

(1,1,2,8.50),
(1,5,1,15.00),
(1,9,3,8.00),

(2,2,1,25.00),
(2,4,2,12.00),

(3,3,4,6.50),
(3,10,2,7.00),

(4,5,1,15.00),
(4,6,1,14.00),
(4,11,1,18.00),

(5,8,2,10.00),
(5,1,1,8.50),

(6,7,4,5.00),
(6,12,2,4.50),

(7,3,3,6.50),
(7,10,1,7.00),
(7,11,1,18.00),

(8,5,2,15.00),
(8,9,2,8.00),

(9,1,2,8.50),
(9,2,1,25.00),
(9,3,2,6.50),

(10,4,1,12.00),
(10,7,3,5.00),
(10,12,5,4.50);
