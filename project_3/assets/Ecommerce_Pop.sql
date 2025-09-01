USE Ecommerce;

-- Populando Tabelas
-- Inserindo Clientes 
INSERT INTO Cliente (nome, endereco) VALUES
('Shopee', 'Rua das Lojas, 100, São Paulo'),
('Mercado Livre', 'Av. Compras, 200, Rio de Janeiro'),
('Americanas Digital', 'Rua E-commerce, 300, Belo Horizonte');
UPDATE Cliente SET nome = 'João Silva', endereco = 'Rua A, 123, São Paulo' WHERE idCliente = 1;
UPDATE Cliente SET nome = 'Maria Oliveira', endereco = 'Av. B, 456, Rio de Janeiro' WHERE idCliente = 2;
UPDATE Cliente SET nome = 'Carlos Souza', endereco = 'Rua C, 789, Belo Horizonte' WHERE idCliente = 3;

-- Inserindo Clientes Pessoa Física (CPF)
INSERT INTO Cliente_CPF (idCliente, cpf) VALUES
(1, '12345678901'),
(2, '98765432109');

-- Inserindo Cliente Pessoa Jurídica (CNPJ)
INSERT INTO Cliente_CNPJ (idCliente, cnpj, razao_social) VALUES
(3, '12345678000190', 'Americanas Digital Comercio Ltda');

-- Inserindo Fornecedores (inspirados em marcas conhecidas)
INSERT INTO Fornecedor (nome, endereco, tipo_fornecedor) VALUES
('Nike Store', 'Rua Esportiva, 400, São Paulo', 'terceiro'),
('Adidas Brasil', 'Av. Moda, 500, Rio de Janeiro', 'terceiro'),
('Zara Local', 'Rua Estilo, 600, Belo Horizonte', 'loja');

-- Inserindo Fornecedores Pessoa Física (CPF)
INSERT INTO Fornecedor_CPF (idFornecedor, cpf) VALUES
(1, '11122233344'),
(3, '55566677788');

-- Inserindo Fornecedor Pessoa Jurídica (CNPJ)
INSERT INTO Fornecedor_CNPJ (idFornecedor, cnpj, razao_social) VALUES
(2, '98765432000123', 'Adidas Brasil Comercio Ltda');

-- Inserindo 3 Produtos
INSERT INTO Produto (nome, categoria, preco) VALUES
('Tênis Nike Air', 'Calçados', 299.90),
('Jaqueta Adidas Original', 'Roupas', 499.90),
('Camisa Zara Casual', 'Roupas', 199.90);

-- Inserindo 3 registros de produtos disponibilizados
INSERT INTO Disponibilizando_produto (Fornecedor_idFornecedor, Produto_idProduto) VALUES
(1, 1), -- Nike Store fornece Tênis Nike Air
(2, 2), -- Adidas Brasil fornece Jaqueta Adidas Original
(3, 3); -- Zara Local fornece Camisa Zara Casual

-- Inserindo 3 Estoques
INSERT INTO Estoque (local) VALUES
('Armazém SP - Setor A'),
('Armazém RJ - Setor B'),
('Armazém BH - Setor C');

-- Inserindo 3 registros de produtos em estoque
INSERT INTO Produto_em_Estoque (Produto_idProduto, Estoque_idEstoque, quantidade) VALUES
(1, 1, 50),  -- Tênis Nike Air no Armazém SP
(2, 2, 30),  -- Jaqueta Adidas no Armazém RJ
(3, 3, 20);  -- Camisa Zara no Armazém BH

-- Inserindo 3 Pedidos
INSERT INTO Pedido (status, descricao, frete, Cliente_idCliente) VALUES
('Pendente', 'Compra de tênis', 15.00, 1),
('Enviado', 'Jaqueta esportiva', 20.00, 2),
('Entregue', 'Camisa casual', 10.00, 3);

-- Inserindo 3 registros de produtos em pedidos
INSERT INTO Pedido_Produtos (Pedido_idPedido, Produto_idProduto, quantidade) VALUES
(1, 1, 1),  -- Tênis Nike Air no Pedido 1
(2, 2, 1),  -- Jaqueta Adidas no Pedido 2
(3, 3, 2);  -- Camisa Zara no Pedido 3

-- Inserindo 3 Pagamentos
INSERT INTO Pagamento (valor, dataPagamento, Pedido_idPedido, Pedido_Cliente_idCliente) VALUES
(314.90, '2025-09-01 14:00:00', 1, 1),
(519.90, '2025-09-01 14:15:00', 2, 2),
(409.80, '2025-09-01 14:30:00', 3, 3);

-- Inserindo 3 Entregas
INSERT INTO Entrega (status, codigo_rastreio, data_envio, data_entrega, Pedido_idPedido, Pedido_Cliente_idCliente) VALUES
('Em trânsito', 'TRK001', '2025-09-01 15:00:00', NULL, 1, 1),
('Entregue', 'TRK002', '2025-09-01 15:10:00', '2025-09-02 10:00:00', 2, 2),
('Aguardando', 'TRK003', NULL, NULL, 3, 3);


SELECT * FROM Cliente;
SELECT * FROM Cliente_CPF;
SELECT * FROM Cliente_CNPJ;
SELECT * FROM Fornecedor;
SELECT * FROM Fornecedor_CPF;
SELECT * FROM Fornecedor_CNPJ;
SELECT * FROM Produto;
SELECT * FROM Disponibilizando_produto;
SELECT * FROM Estoque;
SELECT * FROM Produto_em_Estoque;
SELECT * FROM Pedido;
SELECT * FROM Pedido_Produtos;
SELECT * FROM Pagamento;
SELECT * FROM Entrega;