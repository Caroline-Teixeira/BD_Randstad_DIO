USE oficina;

-- clientes 
SELECT nome FROM Cliente;

-- Quais são todos os veículos disponíveis e suas informações básicas?
SELECT * FROM Veiculo;

-- where veículos fabricados depois de 2017
SELECT modelo, placa, ano FROM Veiculo WHERE ano > 2017;

--  Quais os serviços foram feitos para cada cliente?
SELECT cliente.nome AS Cliente, COUNT(pedido.idPedido) AS Total_de_Pedidos
FROM Cliente cliente
LEFT JOIN Pedido pedido ON cliente.idCliente = pedido.Cliente_idCliente
GROUP BY cliente.nome;

-- Qual é o valor total de cada peça considerando a quantidade utilizada em cada ordem de serviço?
SELECT Peca.descricao, Peca_OS.quantidade, Peca.valor_unitario, ROUND(Peca_OS.quantidade * Peca.valor_unitario, 2) AS valor_total
FROM Peca
JOIN Peca_OS ON Peca.idPeca = Peca_OS.idPeca;

-- Quais são as ordens de serviço, ordenadas por data de entrega em ordem decrescente?
SELECT idOrdem, data_inicio, data_entrega, status_servico
FROM OS
ORDER BY data_entrega DESC;

-- Quais ordens de serviço têm um valor total de serviços maior que 200, agrupadas por cliente?
SELECT Cliente.nome, OS.idOrdem, SUM(Referencia_OS.valor) AS valor_total
FROM Cliente
JOIN OS ON Cliente.idCliente = OS.cliente_id
JOIN Referencia_OS ON OS.idOrdem = Referencia_OS.idOS
GROUP BY Cliente.nome, OS.idOrdem
HAVING valor_total > 200;

-- Quais clientes autorizaram ordens de serviço, 
-- incluindo detalhes do veículo, equipe responsável e valor total dos serviços?
SELECT Cliente.nome, Veiculo.modelo, Veiculo.placa, Equipe.funcao, OS.status_servico, SUM(Referencia_OS.valor) AS valor_total
FROM Cliente
JOIN OS ON Cliente.idCliente = OS.cliente_id
JOIN Veiculo ON OS.veiculo_id = Veiculo.idVeiculo
JOIN Equipe ON OS.equipe_id = Equipe.idEquipe
JOIN Referencia_OS ON OS.idOrdem = Referencia_OS.idOS
JOIN Autorizacao ON OS.idOrdem = Autorizacao.idOS
WHERE Autorizacao.autorização = TRUE
GROUP BY Cliente.nome, Veiculo.modelo, Veiculo.placa, Equipe.funcao, OS.status_servico;