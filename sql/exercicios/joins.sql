-- JOIN

-- inner join
SELECT c.nome, p.id, p.dataHoraPedido
FROM Clientes c
INNER JOIN Pedidos p
ON c.id = p.idClient
LIMIT 2;

-- left join
SELECT c.nome, p.id, p.dataHoraPedido
FROM Clientes c
LEFT JOIN Pedidos p
ON c.id = p.idClient;
