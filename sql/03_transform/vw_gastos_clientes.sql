-- vw_gastos_clientes — total de pedidos, total gasto e média por item de cada cliente.
-- precoUnitario já é o valor total da linha (quantidade embutida), por isso não multiplica.

DROP VIEW IF EXISTS vw_gastos_clientes;

CREATE VIEW vw_gastos_clientes AS
SELECT c.id, c.nome,
       COUNT(DISTINCT p.id) AS totalPedidos,
       SUM(ip.precoUnitario) AS totalGasto,
       ROUND(AVG(ip.precoUnitario), 2) AS media
FROM Clientes c
JOIN Pedidos p ON c.id = p.idClient
JOIN ItensPedidos ip ON p.id = ip.idPedido
GROUP BY c.id, c.nome;
