SELECT * FROM colaboradores;

SELECT * FROM fornecedores;

-- Buscando o endereço dos colaboradores e clientes
SELECT rua, bairro, cidade, estado, cep FROM colaboradores;

SELECT rua, bairro, cidade, estado, cep FROM fornecedores;


-- UNION 
SELECT rua, bairro, cidade, estado, cep FROM colaboradores
UNION 
SELECT rua, bairro, cidade, estado, cep FROM fornecedores;

SELECT * FROM colaboradores WHERE rua = 'Rua das flores - 210' ;

-- UNION ALL
SELECT rua, bairro, cidade, estado, cep FROM colaboradores
UNION ALL
SELECT rua, bairro, cidade, estado, cep FROM fornecedores;

SELECT nome, rua, bairro, cidade, estado, cep FROM colaboradores
UNION ALL
SELECT nome, rua, bairro, cidade, estado, cep FROM fornecedores;
