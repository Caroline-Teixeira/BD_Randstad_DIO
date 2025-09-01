USE oficina;

-- Inserindo dados em Cliente
INSERT INTO Cliente (nome, cpf, endereco) VALUES
('João Silva', '12345678901', 'Rua das Flores, 123, São Paulo, SP'),
('Maria Oliveira', '98765432100', 'Av. Brasil, 456, Rio de Janeiro, RJ'),
('Carlos Souza', '11122233344', 'Rua Central, 789, Belo Horizonte, MG'),
('Ana Pereira', '55566677788', 'Rua do Sol, 101, Salvador, BA');
SELECT * FROM Cliente;

-- Inserindo dados em Veiculo
INSERT INTO Veiculo (modelo, placa, ano, idCliente) VALUES
('Fiat Uno', 'ABC1234', 2015, 1),
('Volkswagen Gol', 'XYZ5678', 2018, 2),
('Chevrolet Onix', 'DEF9012', 2020, 3),
('Honda Civic', 'GHI3456', 2017, 4);
SELECT * FROM Veiculo;

-- Inserindo dados em Equipe
INSERT INTO Equipe (funcao) VALUES
('Mecânica Geral'),
('Elétrica Automotiva'),
('Funilaria e Pintura');
SELECT * FROM Equipe;

-- Inserindo dados em Mecanico
INSERT INTO Mecanico (nome, especialidade, endereco, idEquipe) VALUES
('Pedro Almeida', 'Motor', 'Rua das Acácias, 200, São Paulo, SP', 1),
('Lucas Mendes', 'Elétrica', 'Av. dos Bandeirantes, 300, Rio de Janeiro, RJ', 2),
('Fernanda Costa', 'Pintura', 'Rua das Palmeiras, 400, Belo Horizonte, MG', 3),
('Rafael Lima', 'Suspensão', 'Rua da Praia, 500, Salvador, BA', 1);
SELECT * FROM Mecanico;

-- Inserindo dados em Peca
INSERT INTO Peca (descricao, valor_unitario) VALUES
('Filtro de Óleo', 30.00),
('Pastilha de Freio', 80.00),
('Bateria 60Ah', 300.00),
('Pintura Automotiva 1L', 150.00);
SELECT * FROM Peca;

-- Inserindo dados em Servico_Referencia
INSERT INTO Servico_Referencia (descricao, valor) VALUES
('Troca de Óleo', 100.00),
('Alinhamento e Balanceamento', 120.00),
('Reparo Elétrico', 200.00),
('Pintura Parcial', 500.00);
SELECT * FROM Servico_Referencia;

-- Inserindo dados em OS
INSERT INTO OS (data_inicio, data_entrega, status_servico, cliente_id, veiculo_id, equipe_id) VALUES
('2025-08-01', '2025-08-03', 'Concluído', 1, 1, 1),
('2025-08-05', '2025-08-07', 'Em Andamento', 2, 2, 2),
('2025-08-10', '2025-08-12', 'Pendente', 3, 3, 3),
('2025-08-15', '2025-08-17', 'Concluído', 4, 4, 1);
SELECT * FROM OS;

-- Inserindo dados em Referencia_OS
INSERT INTO Referencia_OS (idOS, idServico, valor) VALUES
(1, 1, 100.00),
(1, 2, 120.00),
(2, 3, 200.00),
(3, 4, 500.00);
SELECT * FROM Referencia_OS;

-- Inserindo dados em Peca_OS
INSERT INTO Peca_OS (idOS, idPeca, quantidade) VALUES
(1, 1, 2),
(1, 2, 4),
(2, 3, 1),
(3, 4, 2);
SELECT * FROM Peca_OS;

-- Inserindo dados em Autorizacao
INSERT INTO Autorizacao (autorização, idCliente, idOS) VALUES
(TRUE, 1, 1),
(TRUE, 2, 2),
(FALSE, 3, 3),
(TRUE, 4, 4);
SELECT * FROM Autorizacao;