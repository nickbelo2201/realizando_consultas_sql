--criando view para consultar gastos por cliente
CREATE VIEW gastosClientes AS 
SELECT c.id, c.nome,
COUNT(DISTINCT(p.id)) AS totalPedidos, 
SUM(ip.precoUnitario) AS totalGasto,
ROUND(AVG(ip.precoUnitario), 2) AS media
FROM Clientes c
JOIN Pedidos p ON c.id = p.idClient
JOIN itensPedidos ip ON p.id = ip.idPedido 
GROUP BY c.nome, c.id;