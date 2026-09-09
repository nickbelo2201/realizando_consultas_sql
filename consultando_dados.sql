--consultando dados em conjunto
SELECT nome, email, telefone, rua, bairro, cidade, estado, cep FROM Fornecedores
UNION ALL
SELECT nome, email, telefone, rua, bairro, cidade, estado, cep FROM Colaboradores;


--SUBCONSULTAS

--consultando dados cruzados com WHERE
SELECT nome, telefone 
FROM Clientes 
WHERE id = (SELECT id FROM Pedidos WHERE dataHoraPedido = '2023-01-02 08:15:00');

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
    FROM produtos 
);

--consultando com JOIN
--INNER JOIN
SELECT *
FROM Clientes c 
INNER JOIN Pedidos p
ON c.id = p.idClient;

--RIGTH JOIN
SELECT x.nome, x.descricao, x.preco, x.categoria, ip.quantidade 
FROM (
    SELECT pr.id, pd.idClient, pr.nome, pr.descricao, pr.preco, pr.categoria
    FROM Produtos pr
    JOIN Pedidos pd
    ON pr.id = pd.idClient
    WHERE strftime('%m', dataHoraPedido) = '10') x
RIGHT JOIN itenspedidos ip
ON ip.idProduto = x.id;

--LEFT JOIN
SELECT *
FROM clientes c
LEFT JOIN (
    SELECT p.id, p.idClient
    FROM Pedidos p
    WHERE strftime('%m', dataHoraPedido) = '10' ) x
ON x.idClient = x.id
WHERE x.idClient IS NULL;

--FULL JOIN
SELECT c.nome, c.id, p.idClient 
FROM Clientes c 
FULL JOIN Pedidos p 
ON c.id = p.idClient
WHERE c.id IS NULL;

--consultas views e trigers
SELECT c.nome, pd.id, SUM(ip.precoUnitario)
FROM Pedidos pd
JOIN itensPedidos ip ON pd.id = ip.idPedido
JOIN Clientes c ON c.id = pd.idClient
GROUP BY c.nome, pd.id