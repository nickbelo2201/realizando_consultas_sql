-- Pergunta: que categorias do cardápio sustentam o faturamento?

SELECT pr.categoria,
       SUM(ip.precoUnitario) AS receita,
       ROUND(100.0 * SUM(ip.precoUnitario)
             / (SELECT SUM(precoUnitario) FROM ItensPedidos), 1) AS pct_receita
FROM ItensPedidos ip
JOIN Produtos pr ON pr.id = ip.idProduto
GROUP BY pr.categoria
ORDER BY receita DESC;
