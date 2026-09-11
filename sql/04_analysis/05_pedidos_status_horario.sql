-- Pergunta: como os pedidos se distribuem por status e por horário do dia?

-- Por status
SELECT status, COUNT(*) AS pedidos
FROM Pedidos
GROUP BY status
ORDER BY pedidos DESC;

-- Por hora do dia
SELECT strftime('%H', dataHoraPedido) AS hora, COUNT(*) AS pedidos
FROM Pedidos
GROUP BY hora
ORDER BY hora;
