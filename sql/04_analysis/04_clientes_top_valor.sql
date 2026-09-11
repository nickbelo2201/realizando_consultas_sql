-- Pergunta: quais clientes concentram maior valor?
-- Usa a view vw_gastos_clientes (sql/03_transform).

SELECT nome, totalPedidos, totalGasto,
       ROUND(100.0 * totalGasto
             / (SELECT SUM(totalGasto) FROM vw_gastos_clientes), 1) AS pct_receita
FROM vw_gastos_clientes
ORDER BY totalGasto DESC
LIMIT 10;
