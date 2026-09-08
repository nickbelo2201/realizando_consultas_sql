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