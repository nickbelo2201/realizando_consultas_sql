-- ATENCAO: altera dados. Rode num banco de teste ou reconstrua depois com scripts/build_db.sh.

-- UPDATE
UPDATE Produtos
SET preco = 13
WHERE id = '30';

UPDATE Produtos
SET descricao = 'croassaint recheado com chocolate'
WHERE nome LIKE 'Croissant%chocolate';

-- DELETE
DELETE FROM Clientes WHERE id = 27;

DELETE FROM Colaboradores WHERE id = 3;

-- TRANSACOES (camadas de segurança)
-- BEGIN TRANSACTION cria o ambiente de transação;
-- ROLLBACK descarta tudo e volta ao estado inicial;
-- COMMIT publica as alterações.

BEGIN TRANSACTION;
UPDATE Produtos SET preco = preco * 2;
ROLLBACK;  -- desfaz o aumento: os preços voltam ao valor anterior

BEGIN TRANSACTION;
UPDATE Produtos SET preco = 14 WHERE id = '30';
COMMIT;    -- confirma a alteração
