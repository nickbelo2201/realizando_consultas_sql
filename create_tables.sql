-- create_tables.sql — schema do banco Serenato Café.
-- ATENCAO: este script recria o banco do zero, apagando todas as tabelas antes.
-- O banco é descartavel: todo o dado vem de inserindo_dados.sql e dos CSVs.
-- Uso: sqlite3 serenato_dados.db < create_tables.sql

PRAGMA foreign_keys = ON;

-- Drops em ordem inversa das dependencias (filho -> pai).
DROP TABLE IF EXISTS ItensPedidos;
DROP TABLE IF EXISTS Pedidos;
DROP TABLE IF EXISTS Clientes;
DROP TABLE IF EXISTS Fornecedores;
DROP TABLE IF EXISTS Colaboradores;
DROP TABLE IF EXISTS produtos;
DROP TABLE IF EXISTS faturamentoDiario;

CREATE TABLE produtos(
    id TEXT PRIMARY KEY,
    nome VARCHAR(250),
    descricao VARCHAR(250),
    preco DECIMAL(10, 2),
    categoria VARCHAR(50)
    );

CREATE TABLE Colaboradores(
    id TEXT PRIMARY KEY,
    nome VARCHAR(250) NOT NULL,
    cargo VARCHAR(250),
    data_Contratacao DATE,
    email VARCHAR(100),
    telefone VARCHAR(20),
    rua VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(8) NOT NULL
);

CREATE TABLE Fornecedores(
    id TEXT PRIMARY KEY,
    nome VARCHAR(250) NOT NULL,
    contato VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telefone VARCHAR(20),
    rua VARCHAR(100) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(8) NOT NULL
);

CREATE TABLE Clientes (
    id TEXT NOT NULL PRIMARY KEY,
    nome VARCHAR(250),
    telefone VARCHAR(20),
    email VARCHAR(100) DEFAULT 'sem email',
    endereco VARCHAR(250)
);

 CREATE TABLE Pedidos (
    id TEXT NOT NULL PRIMARY KEY,
    idClient TEXT,
    dataHoraPedido DATETIME,
    status VARCHAR(50),
    FOREIGN KEY (idClient) REFERENCES Clientes(id) ON DELETE CASCADE
 );

 CREATE TABLE ItensPedidos (
    idPedido TEXT,
    idProduto TEXT,
    quantidade INTEGER,
    precoUnitario DECIMAL(10,2),
    PRIMARY KEY(idPedido, idProduto),
    FOREIGN KEY (idPedido) REFERENCES Pedidos(id) ON DELETE CASCADE,
    FOREIGN KEY (idProduto) REFERENCES Produtos(id) ON DELETE CASCADE
 );

 CREATE TABLE faturamentoDiario (
    data DATE,
    valor DECIMAL(10, 2)
);