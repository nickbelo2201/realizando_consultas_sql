-- Exercício de trigger: mantém a tabela faturamentoDiario atualizada a cada item inserido.
-- Na análise usamos a view vw_faturamento_diario (sql/03_transform), que faz o mesmo sem recalcular tudo a cada INSERT.

CREATE TABLE IF NOT EXISTS faturamentoDiario (
    data DATE,
    valor DECIMAL(10, 2)
);

-- carga inicial
DELETE FROM faturamentoDiario;
INSERT INTO faturamentoDiario(data, valor)
SELECT DATE(p.dataHoraPedido) AS data,
       SUM(ip.precoUnitario) AS valor
FROM Pedidos p
JOIN ItensPedidos ip ON p.id = ip.idPedido
GROUP BY data
ORDER BY data;

--criando trigger para calcular faturamento diario
DROP TRIGGER IF EXISTS calculaFaturamentoDiario;
CREATE TRIGGER calculaFaturamentoDiario
AFTER INSERT ON ItensPedidos
FOR EACH ROW
BEGIN
    DELETE FROM faturamentoDiario;
    INSERT INTO faturamentoDiario(data, valor)
    SELECT DATE(p.dataHoraPedido) AS data,
           SUM(ip.precoUnitario) AS valor
    FROM Pedidos p
    JOIN ItensPedidos ip ON p.id = ip.idPedido
    GROUP BY data
    ORDER BY data;
END;

-- testando o trigger
INSERT INTO Pedidos(id, idClient, dataHoraPedido, status)
VALUES (451, 27, '2023-10-07 14:30:00', 'Em Andamento'),
       (452, 28, '2023-10-07 14:35:00', 'Em Andamento');

INSERT INTO ItensPedidos(idPedido, idProduto, quantidade, precoUnitario)
VALUES (451, 14, 1, 6.0),
       (451, 13, 1, 7.0),
       (452, 10, 1, 5.0),
       (452, 30, 1, 12.50);  -- o original usava produto 31, que não existe

SELECT * FROM faturamentoDiario WHERE data = '2023-10-07';
