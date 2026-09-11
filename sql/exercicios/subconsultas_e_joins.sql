--consultando dados em conjunto
SELECT nome, email, telefone, rua, bairro, cidade, estado, cep FROM Fornecedores
UNION ALL
SELECT nome, email, telefone, rua, bairro, cidade, estado, cep FROM Colaboradores;


--SUBCONSULTAS

--consultando dados cruzados com WHERE
SELECT nome, telefone
FROM Clientes
WHERE id = (SELECT idClient FROM Pedidos WHERE dataHoraPedido = '2023-01-02 08:15:00');

--consultados dados cruzados com IN
SELECT id, nome, telefone
FROM Clientes
WHERE id IN (
    SELECT idClient
    FROM Pedidos
    WHERE strftime('%m', dataHoraPedido) = '02'
);

--consultando dados com HAVING
SELECT nome, preco, categoria
FROM Produtos
GROUP BY nome, preco, categoria
HAVING preco > (
    SELECT AVG(preco)
    FROM Produtos
);

--consultando com JOIN
--INNER JOIN
SELECT *
FROM Clientes c
INNER JOIN Pedidos p
ON c.id = p.idClient;

--RIGHT JOIN: produtos vendidos em outubro (todos os itens de outubro aparecem)
SELECT pr.nome, pr.descricao, pr.preco, pr.categoria, x.quantidade
FROM Produtos pr
RIGHT JOIN (
    SELECT ip.idProduto, ip.quantidade
    FROM ItensPedidos ip
    JOIN Pedidos pd ON pd.id = ip.idPedido
    WHERE strftime('%m', pd.dataHoraPedido) = '10') x
ON x.idProduto = pr.id;

--LEFT JOIN: clientes sem pedido em outubro
SELECT *
FROM Clientes c
LEFT JOIN (
    SELECT p.id, p.idClient
    FROM Pedidos p
    WHERE strftime('%m', dataHoraPedido) = '10') x
ON x.idClient = c.id
WHERE x.idClient IS NULL;

--FULL JOIN
SELECT c.nome, c.id, p.idClient
FROM Clientes c
FULL JOIN Pedidos p
ON c.id = p.idClient
WHERE c.id IS NULL;

--criando consulta total gasto de cliente por pedido
SELECT c.nome, pd.id, SUM(ip.precoUnitario)
FROM Pedidos pd
JOIN ItensPedidos ip ON pd.id = ip.idPedido
JOIN Clientes c ON c.id = pd.idClient
GROUP BY c.nome, pd.id;

--criando consulta total gasto por cliente
SELECT c.nome, p.idClient, SUM(ip.precoUnitario) AS totalGasto
FROM Clientes c
JOIN Pedidos p ON c.id = p.idClient
JOIN ItensPedidos ip ON p.id = ip.idPedido
GROUP BY c.nome, c.id;

--criando consulta para media de gastos por cliente
SELECT c.id, c.nome, c.telefone, ROUND(AVG(ip.precoUnitario), 2)
FROM Clientes c
JOIN Pedidos p ON c.id = p.idClient
JOIN ItensPedidos ip ON p.id = ip.idPedido
GROUP BY c.nome, c.id;
