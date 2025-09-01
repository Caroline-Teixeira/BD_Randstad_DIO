CREATE DATABASE Ecommerce;
USE Ecommerce;

-- Cliente
CREATE TABLE Cliente(
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL
);

DESC Cliente;
SELECT * FROM Cliente;

-- Cliente Pessoa Física
CREATE TABLE Cliente_CPF (
    idCliente INT PRIMARY KEY,                
    cpf VARCHAR(11) NOT NULL UNIQUE,          
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
        ON DELETE CASCADE
);
DESC Cliente_CPF;
SELECT * FROM Cliente_CPF;

-- Cliente Pessoa Jurídica
CREATE TABLE Cliente_CNPJ (
    idCliente INT PRIMARY KEY,                
    cnpj VARCHAR(14) NOT NULL UNIQUE,         
    razao_social VARCHAR(100) NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
        ON DELETE CASCADE
);

DESC Cliente_CNPJ;
SELECT * FROM Cliente_CNPJ;

-- Fornecedor
CREATE TABLE Fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- alterar tabela
ALTER TABLE Fornecedor
ADD COLUMN endereco VARCHAR(100) NOT NULL,
ADD COLUMN tipo_fornecedor ENUM('loja', 'terceiro') NOT NULL;

DESC Fornecedor;
SELECT * FROM Fornecedor;

CREATE TABLE Fornecedor_CPF (
    idFornecedor INT PRIMARY KEY,                
    cpf VARCHAR(11) NOT NULL UNIQUE,         
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
        ON DELETE CASCADE
);

DESC Fornecedor_CPF;
SELECT * FROM Fornecedor_CPF;


CREATE TABLE Fornecedor_CNPJ (
    idFornecedor INT PRIMARY KEY,               
    cnpj VARCHAR(14) NOT NULL UNIQUE,        
    razao_social VARCHAR(100) NOT NULL,
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
        ON DELETE CASCADE
);

DESC Fornecedor_CNPJ;
SELECT * FROM Fornecedor_CNPJ;



-- Produtos
DROP TABLE Produto;
CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(255),
    preco FLOAT NOT NULL
);

DESC Produto;
SELECT * FROM Produto;

-- produtos disponiveis
CREATE TABLE Disponibilizando_produto (
    Fornecedor_idFornecedor INT NOT NULL,
    Produto_idProduto INT NOT NULL,
    PRIMARY KEY (Fornecedor_idFornecedor, Produto_idProduto),
    FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor)
        ON DELETE CASCADE,
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
        ON DELETE CASCADE
);
DESC Disponibilizando_produto;
SELECT * FROM Disponibilizando_produto;

-- estoque
CREATE TABLE Estoque (
    idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    local VARCHAR(100)
);
DESC estoque;
SELECT * FROM estoque;

CREATE TABLE Produto_em_Estoque (
    Produto_idProduto INT NOT NULL,
    Estoque_idEstoque INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (Produto_idProduto, Estoque_idEstoque),
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
        ON DELETE CASCADE,
    FOREIGN KEY (Estoque_idEstoque) REFERENCES Estoque(idEstoque)
        ON DELETE CASCADE
);

DESC Produto_em_Estoque;
SELECT * FROM Produto_em_Estoque;

-- pedidos
CREATE TABLE Pedido (
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(45) NOT NULL,
    descricao VARCHAR(100),
    frete FLOAT,
    Cliente_idCliente INT NOT NULL,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
        ON DELETE CASCADE
);
DESC Pedido;
SELECT * FROM Pedido;

CREATE TABLE Pedido_Produtos (
    Pedido_idPedido INT NOT NULL,
    Produto_idProduto INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (Pedido_idPedido, Produto_idProduto),
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
        ON DELETE CASCADE,
    FOREIGN KEY (Produto_idProduto) REFERENCES Produto(idProduto)
        ON DELETE CASCADE
);
DESC Pedido_Produtos;
SELECT * FROM Pedido_Produtos;

-- pagamento
CREATE TABLE Pagamento (
    idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    valor FLOAT NOT NULL,
    dataPagamento DATETIME,
    Pedido_idPedido INT NOT NULL,
    Pedido_Cliente_idCliente INT NOT NULL,
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
        ON DELETE CASCADE,
    FOREIGN KEY (Pedido_Cliente_idCliente) REFERENCES Cliente(idCliente)
        ON DELETE CASCADE
);
DESC Pagamento;
SELECT * FROM Pagamento;

-- entrega
CREATE TABLE Entrega (
    idEntrega INT AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(45) NOT NULL,
    codigo_rastreio VARCHAR(100),
    data_envio DATETIME,
    data_entrega DATETIME,
    Pedido_idPedido INT NOT NULL,
    Pedido_Cliente_idCliente INT NOT NULL,
    FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
        ON DELETE CASCADE,
    FOREIGN KEY (Pedido_Cliente_idCliente) REFERENCES Cliente(idCliente)
        ON DELETE CASCADE
);
DESC Entrega;
SELECT * FROM Entrega;
