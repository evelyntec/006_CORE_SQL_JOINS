CREATE DATABASE sistema_pedidos;
USE sistema_pedidos;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    direccion VARCHAR(150),
    telefono VARCHAR(20)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE
);

INSERT INTO clientes (nombre, direccion, telefono) VALUES
('Evelyn Alvarez', 'Av Central 123', '912345678'),
('Carlos Mendoza', 'San Martin 456', '987654321'),
('Ana Silva', 'Pasaje Las Rosas 789', '955566677'),
('Pedro Gomez', 'Calle Elm 1010', '944433322'),
('Maria Jose', 'Av Alemania 432', '922211100');

INSERT INTO pedidos (cliente_id, fecha, total) VALUES
(1, '2026-06-01', 15000.50),
(1, '2026-06-05', 32000.00),
(1, '2026-06-10', 4500.00),
(2, '2026-06-02', 85000.00),
(2, '2026-06-12', 12500.00),
(3, '2026-06-03', 45000.00),
(3, '2026-06-15', 60000.00),
(4, '2026-06-04', 7000.00),
(5, '2026-06-06', 95000.00),
(5, '2026-06-18', 18000.90);

SELECT clientes.id AS cliente_num, clientes.nombre, pedidos.id AS pedido_num, pedidos.fecha, pedidos.total
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;

SELECT id, fecha, total 
FROM pedidos 
WHERE cliente_id = 1;

SELECT clientes.nombre, SUM(pedidos.total) AS total_gastado
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nombre;

DELETE FROM clientes WHERE id = 4;

SELECT clientes.nombre, COUNT(pedidos.id) AS cantidad_pedidos
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nombre
ORDER BY cantidad_pedidos DESC
LIMIT 3;