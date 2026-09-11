-- Pergunta: qual o ticket médio por pedido e como ele varia ao longo dos meses?

WITH total_pedido AS (
    SELECT p.id, strftime('%Y-%m', p.dataHoraPedido) AS mes,
           SUM(ip.precoUnitario) AS valor
    FROM Pedidos p
    JOIN ItensPedidos ip ON p.id = ip.idPedido
    GROUP BY p.id
)
SELECT mes,
       COUNT(*) AS pedidos,
       SUM(valor) AS faturamento,
       ROUND(AVG(valor), 2) AS ticket_medio
FROM total_pedido
GROUP BY mes
ORDER BY mes;
