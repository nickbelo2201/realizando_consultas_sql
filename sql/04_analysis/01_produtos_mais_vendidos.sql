-- Pergunta: quais produtos mais vendem, em receita e em volume?

-- Top 10 por receita
SELECT pr.nome, pr.categoria,
       SUM(ip.quantidade) AS unidades,
       SUM(ip.precoUnitario) AS receita
FROM ItensPedidos ip
JOIN Produtos pr ON pr.id = ip.idProduto
GROUP BY pr.id, pr.nome, pr.categoria
ORDER BY receita DESC
LIMIT 10;

-- Top 10 por volume (unidades)
SELECT pr.nome, pr.categoria,
       SUM(ip.quantidade) AS unidades,
       SUM(ip.precoUnitario) AS receita
FROM ItensPedidos ip
JOIN Produtos pr ON pr.id = ip.idProduto
GROUP BY pr.id, pr.nome, pr.categoria
ORDER BY unidades DESC
LIMIT 10;
