USE Ecommerce;

-- clientes 
SELECT nome FROM Cliente;

-- Quais são todos os produtos disponíveis e suas informações básicas?
SELECT idProduto, nome, categoria, preco 
FROM Produto;

-- Quantos pedidos foram feitos por cada cliente?
SELECT cliente.nome AS Cliente, COUNT(pedido.idPedido) AS Total_de_Pedidos
FROM Cliente cliente
LEFT JOIN Pedido pedido ON cliente.idCliente = pedido.Cliente_idCliente
GROUP BY cliente.nome;

-- Algum vendedor também é fornecedor? (por CPF)
SELECT fornecedor.nome AS fornecedor, cliente.nome AS cliente
FROM Fornecedor_CPF fornecedor_cpf
JOIN Fornecedor fornecedor ON fornecedor_cpf.idFornecedor = fornecedor.idFornecedor
JOIN Cliente_CPF cliente_cpf ON fornecedor_cpf.cpf = cliente_cpf.cpf
JOIN Cliente cliente ON cliente_cpf.idCliente = cliente.idCliente;

-- Relação de produtos fornecedores e estoques;
SELECT produto.nome AS produto, fornecedor.nome AS fornecedor, estoque.local AS estoque
FROM Produto produto
JOIN Disponibilizando_produto dp ON produto.idProduto = dp.Produto_idProduto
JOIN Fornecedor fornecedor ON dp.Fornecedor_idFornecedor = fornecedor.idFornecedor
JOIN Produto_em_Estoque pe ON produto.idProduto = pe.Produto_idProduto
JOIN Estoque estoque ON pe.Estoque_idEstoque = estoque.idEstoque;

-- preço total do produto
SELECT pedido.idPedido, produto.nome, 
       ROUND(produto.preco * pedido_produto.quantidade, 2) AS valor_total_produto
FROM Pedido_Produtos pedido_produto
JOIN Produto produto ON pedido_produto.Produto_idProduto = produto.idProduto
JOIN Pedido pedido ON pedido_produto.Pedido_idPedido = pedido.idPedido;

-- buscar pedido por ID específico (where)
SELECT pedido.idPedido, cliente.nome, pedido.status, pedido.frete
FROM Pedido pedido
JOIN Cliente cliente ON pedido.Cliente_idCliente = cliente.idCliente
WHERE pedido.idPedido = 2;

-- HAVING Statement - fornecedores com quantidade total de produtos e nome do produto
SELECT fornecedor.nome AS nome_fornecedor, 
       SUM(produto_estoque.quantidade) AS quantidade_total_produtos,
       GROUP_CONCAT(produto.nome) AS nomes_produtos
FROM Fornecedor fornecedor
JOIN Disponibilizando_produto dp ON fornecedor.idFornecedor = dp.Fornecedor_idFornecedor
JOIN Produto produto ON dp.Produto_idProduto = produto.idProduto
JOIN Produto_em_Estoque produto_estoque ON produto.idProduto = produto_estoque.Produto_idProduto
GROUP BY fornecedor.nome
HAVING SUM(produto_estoque.quantidade) > 20;

-- Ordenações com ORDER BY - produtos por preço
SELECT produto.nome, produto.categoria, produto.preco
FROM Produto produto
ORDER BY produto.preco DESC;