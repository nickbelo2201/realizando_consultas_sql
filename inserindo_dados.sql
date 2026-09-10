INSERT INTO Colaboradores('id', 'nome', 'cargo', 'data_contratacao', 'telefone', 'email', 'rua', 'bairro', 'cidade', 'estado', 'cep') 
VALUES 
(1, 'Carlos Silva', 'Gerente', '2022-03-15', '115551234', 'carlos.silva@email.com', 'Rua do Comércio - 258', 'Centro', 'São Paulo', 'SP', '01000001'),
(2, 'Marta Sousa', 'Chef de Cozinha', '2022-05-10', '215555678', 'marta.sousa@email.com', 'Rua dos Sabores - 456', 'Saboroso', 'São Paulo', 'SP', '20000001'),
(3, 'Pedro Almeida', 'Barista', '2022-07-20', '315557890', 'pedro.almeida@email.com', 'Avenida do Café - 789', 'Centro', 'São Paulo', 'SP', '01000001'),
(4, 'Sofia Rodrigues', 'Garçom', '2022-01-12', '415552345', 'sofia.rodrigues@email.com', 'Rua da Hospitalidade - 101', 'Boas Maneiras', 'São Paulo', 'SP', '40000001'),
(5, 'João Pereira', 'Atendente', '2022-09-05', '515558765', 'joao.pereira@email.com', 'Rua das flores - 210', 'Centro', 'São Paulo', 'SP', '20000001'),
(6, 'Inês Lima', 'Barista', '2022-04-02', '615553421', 'ines.lima@email.com', 'Rua das Entregas - 280', 'Entregas Rápidas', 'São Paulo', 'SP', '90000001'),
(7, 'Antonio Artur', 'Entregador', '2023-01-10', '568442577', 'antonio.artur@email.com', 'Rua das flores - 210', 'Centro', 'São Paulo', 'SP', '20000001');

INSERT INTO Fornecedores('id', 'nome', 'contato', 'telefone', 'email', 'rua', 'bairro', 'cidade', 'estado', 'cep') 
VALUES 
(1, 'Café do Brasil Ltda.', 'Maria Oliveira', '115551234', 'cafebrasil@email.com', 'Rua do Café - 123', 'Centro', 'São Paulo', 'SP', '01000000'),
(2, 'Laticínios Sabor Puro', 'João Santos', '215555678', 'laticinios@email.com', 'Avenida das Vacas - 456', 'Leite Feliz', 'Rio de Janeiro', 'RJ', '20000000'),
(3, 'Frutas Frescas S.A.', 'Carlos Ferreira', '315557890', 'frutasfrescas@email.com', 'Rua das Maçãs - 789', 'Pomar Verde', 'Belo Horizonte', 'MG', '30000000'),
(4, 'Padaria da Cidade', 'Sofia Alves', '415552345', 'padariacidade@email.com', 'Rua dos Pães - 101', 'Pão Quentinho', 'Salvador', 'BA', '40000000'),
(5, 'Fornecedor de Chocolate', 'Rui Lima', '515558765', 'chocolatelovers@email.com', 'Rua do Cacau - 210', 'Chocolateira', 'Florianópolis', 'SC', '88000000'),
(6, 'Distribuidora de Bebidas', 'Ana Pereira', '615553421', 'bebidaspremium@email.com', 'Avenida das Garrafas - 35', 'Copo Cheio', 'Porto Alegre', 'RS', '90000000');

INSERT INTO Produtos('id', 'nome', 'descricao', 'preco', 'categoria')
VALUES
(1, 'Espresso', 'Um shot de espresso forte e encorpado.', 2.50, 'Café'),
(2, 'Cappuccino', 'Espresso, leite vaporizado e espuma de leite.', 3.50, 'Café'),
(3, 'Latte Macchiato', 'Leite vaporizado, espresso e espuma de leite.', 4.00, 'Café'),
(4, 'Mocha', 'Espresso, leite vaporizado, chocolate e chantilly.', 4.50, 'Café'),
(5, 'Café da Casa', 'Café da casa especial com sabor suave.', 2.00, 'Café'),
(6, 'Chá de Camomila', 'Chá de camomila com mel e limão.', 2.00, 'Chá'),
(7, 'Omelete de Queijo', 'Omelete recheada com queijo e ervas.', 7.50, 'Almoço'),
(8, 'Quiche de Espinafre', 'Quiche de espinafre e queijo de cabra.', 8.00, 'Almoço'),
(9, 'Frango ao Curry', 'Frango ao curry com arroz basmati.', 9.00, 'Jantar'),
(10, 'Tiramisu', 'Sobremesa italiana com café e mascarpone.', 5.00, 'Sobremesa'),
(11, 'Croissant de Chocolate', 'Croissant recheado com chocolate belga.', 3.50, 'Sobremesa'),
(12, 'Cappuccino Gelado', 'Cappuccino gelado com chantilly e canela.', 4.50, 'Café'),
(13, 'Salada de Quinoa', 'Salada de quinoa com vegetais frescos.', 7.00, 'Almoço'),
(14, 'Sanduíche de Peru', 'Sanduíche de peru com queijo e mostarda.', 6.00, 'Almoço'),
(15, 'Salmão Grelhado', 'Salmão grelhado com legumes da estação.', 11.00, 'Jantar'),
(16, 'Cheesecake de Framboesa', 'Cheesecake de framboesa com calda.', 5.50, 'Sobremesa'),
(17, 'Smoothie de Frutas', 'Smoothie refrescante de frutas da estação.', 4.00, 'Bebidas'),
(18, 'Chá Verde', 'Chá verde com gengibre e limão.', 2.50, 'Chá'),
(19, 'Baguete de Presunto', 'Baguete fresca recheada com presunto e queijo.', 10.00, 'Almoço'),
(20, 'Salada de Frutas', 'Salada de frutas frescas com iogurte.', 4.00, 'Sobremesa'),
(21, 'Caprese Wrap', 'Wrap recheado com tomate, mozzarella e manjericão.', 6.50, 'Almoço'),
(22, 'Muffin de Mirtilo', 'Muffin de mirtilo recém-assado.', 3.00, 'Café'),
(23, 'Smoothie de Manga', 'Smoothie refrescante de manga e banana.', 4.50, 'Bebidas'),
(24, 'Misto Quente', 'Sanduíche misto quente de presunto e queijo.', 5.50, 'Almoço'),
(25, 'Tarte Tatin de Maçã', 'Tarte de maçã caramelizada.', 5.00, 'Sobremesa'),
(26, 'Sanduíche de Frango', 'Sanduíche de frango grelhado e abacate.', 7.00, 'Almoço'),
(27, 'Batido de Morango', 'Batido cremoso de morango com chantilly.', 4.50, 'Bebidas'),
(28, 'Croissant de Amêndoa', 'Croissant recheado com chocolate belga.', 3.50, 'Sobremesa'),
(29, 'Tofu Scramble', 'Scramble de tofu com vegetais e espinafre.', 6.50, 'Sobremesa'),
(30, 'Salada de Atum', 'Salada de atum com feijão e pimentão.', 8.00, 'Almoço');

INSERT INTO Clientes('id', 'nome', 'telefone', 'email', 'endereco') 
VALUES
(1, 'Maria Silva', '115551234', 'maria.silva@email.com', 'Rua das Flores, 123, Cidade A'),
(2, 'João Pereira', '215555678', 'joao.pereira@email.com', 'Av. Principal, 456, Cidade B'),
(3, 'Ana Rodrigues', '315557890', 'ana.rodrigues@email.com', 'Rua Central, 789, Cidade C'),
(4, 'Pedro Alves', '415552345', 'pedro.alves@email.com', 'Travessa dos Sonhos, 56, Cidade D'),
(5, 'Sofia Santos', '515558765', 'sofia.santos@email.com', 'Alameda das Artes, 321, Cidade E'),
(6, 'Jorge Lima', '615553421', 'jorge.lima@email.com', 'Praça das Estrelas, 987, Cidade F'),
(7, 'Luisa Ferreira', '715559876', 'luisa.ferreira@email.com', 'Rua das Palmeiras, 789, Cidade G'),
(8, 'Carlos Gomes', '815552345', 'carlos.gomes@email.com', 'Avenida dos Ventos, 123, Cidade H'),
(9, 'Marta Ribeiro', '915555432', 'marta.ribeiro@email.com', 'Travessa das Maravilhas, 56, Cidade I');

INSERT INTO clientes (ID, Nome, Telefone, Email, Endereco) VALUES
(10, 'Ana Maria Silva', '1515557890', 'ana.silva@email.com', 'Rua Central, 567, Cidade O');
INSERT INTO clientes (ID, Nome, Telefone, Endereco) VALUES
(11, 'André Almeida', '1015556789', 'Praça da Felicidade, 456, Cidade J');
INSERT INTO clientes (ID, Nome, Telefone, Email, Endereco) VALUES
(12, 'João Carlos Rodrigues', '1615552345', 'joao.rodrigues@email.com', 'Praça dos Poetas, 321, Cidade P');
INSERT INTO clientes (ID, Nome, Telefone, Endereco) VALUES
(13, 'Isabela Pereira', '1115558765', 'Rua das Araras, 789, Cidade K');

INSERT INTO clientes (ID, Nome, Telefone, Email, Endereco) VALUES
(14, 'Isabel Gonçalves', '1715558765', 'isabel.goncalves@email.com', 'Alameda das Gaivotas, 654, Cidade Q'),
(15, 'Ricardo Ferreira', '1815554321', 'ricardo.ferreira@email.com', 'Avenida da Paz, 987, Cidade R'),
(16, 'Mariana Costa', '1915551234', 'mariana.costa@email.com', 'Travessa das Mariposas, 234, Cidade S'),
(17, 'Luís Carlos Sousa', '2015555678', 'luis.sousa@email.com', 'Rua dos Sonhos, 456, Cidade T'),
(18, 'Silvia Ribeiro', '2115557890', 'silvia.ribeiro@email.com', 'Alameda dos Sorrisos, 765, Cidade U'),
(19, 'Artur Santos', '2215552345', 'artur.santos@email.com', 'Praça das Alegrias, 987, Cidade V'),
(21, 'Carolina Lima', '2315558765', 'carolina.lima@email.com', 'Avenida da Felicidade, 654, Cidade W'),
(22, 'Pedro Almeida', '2415554321', 'pedro.almeida@email.com', 'Rua das Estrelas, 123, Cidade X'),
(23, 'Inês Gonçalves', '2515551234', 'ines.goncalves@email.com', 'Travessa das Maravilhas, 234, Cidade Y');

INSERT INTO Clientes('id', 'nome', 'telefone', 'endereco')
VALUES 
(24, 'Rui Santos', '1215554321', 'Alameda das Estrelas, 654, Cidade L');

INSERT INTO Clientes('id', 'nome', 'telefone', 'email', 'endereco')
VALUES 
(25, 'Diogo Fernandes', '2615555678', 'diogo.fernandes@email.com', 'Praça dos Desejos, 987, Cidade Z');

INSERT INTO Clientes('id', 'nome', 'telefone', 'endereco')
VALUES
(26, 'Helena Lima', '1315551234', 'Avenida dos Sonhos, 234, Cidade M'),
(27, 'Paulo Sousa', '1415555678', 'Travessa das Marés, 876, Cidade N');

INSERT INTO Clientes (id, Nome, Telefone, Email, Endereco)
VALUES (28, 'João Santos', '215555678', 'joao.santos@email.com', 'Avenida Principal, 456, Cidade B'),
       (29, 'Carla Ferreira', '315557890', 'carla.ferreira@email.com', 'Travessa das Ruas, 789, Cidade C');

INSERT INTO faturamentoDiario
SELECT DATE(dataHoraPedido) AS data,
       SUM(ip.precoUnitario) AS valor
FROM pedidos p 
JOIN itensPedidos ip
ON p.id = ip.idPedido
GROUP BY data
ORDER BY data;
