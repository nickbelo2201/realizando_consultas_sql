--criando trigger para calcular faturamento diario
CREATE TRIGGER calculaFaturamentoDiario
AFTER INSERT ON itenspedidos
FOR EACH ROW 
BEGIN
DElETE FROM faturamentoDiario;
INSERT INTO faturamentoDiario(data, valor)
SELECT DATE(dataHoraPedido) AS data,
       SUM(ip.precoUnitario) AS valor
FROM pedidos p 
JOIN itensPedidos ip
ON p.id = ip.idPedido
GROUP BY data
ORDER BY data;
END;