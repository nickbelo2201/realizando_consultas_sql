-- vw_faturamento_diario — faturamento por dia.
-- Substitui a tabela faturamentoDiario + trigger: a view é sempre atual e
-- não recalcula tudo a cada item inserido (o trigger segue em sql/exercicios/triggers.sql).

DROP VIEW IF EXISTS vw_faturamento_diario;

CREATE VIEW vw_faturamento_diario AS
SELECT DATE(p.dataHoraPedido) AS data,
       SUM(ip.precoUnitario) AS valor
FROM Pedidos p
JOIN ItensPedidos ip ON p.id = ip.idPedido
GROUP BY DATE(p.dataHoraPedido);
