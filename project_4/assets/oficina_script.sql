CREATE DATABASE Oficina;
USE Oficina;

-- Cliente
CREATE TABLE Cliente(
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    endereco VARCHAR(100) NOT NULL
);

DESC Cliente;
SELECT * FROM Cliente;

-- Veículo
DROP TABLE Veiculo;
CREATE TABLE Veiculo (
	idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(45) NOT NULL,
    placa VARCHAR(7) UNIQUE NOT NULL,
    ano INT NOT NULL,
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
	);
DESC Veiculo;
-- ALTER TABLE Veiculo RENAME COLUMN place TO placa;
SELECT * FROM Veiculo;

-- oficina
-- equipe
CREATE TABLE Equipe(
	idEquipe INT AUTO_INCREMENT PRIMARY KEY,
    funcao VARCHAR(100) NOT NULL
);

DESC Equipe;
SELECT * FROM Equipe;

-- Mecânico
CREATE TABLE MECANICO(
	idMecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(11) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    idEquipe INT,
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe) ON DELETE CASCADE
);

DESC Mecanico;
SELECT * FROM Mecanico;

-- Peça
CREATE TABLE Peca(
	idPeca INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(45) NOT NULL,
    valor_unitario FLOAT NOT NULL
);
DESC Peca;
SELECT * FROM Peca;

-- Serviços de referencia
CREATE TABLE Servico_Referencia(
	idPreco_Referencia INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(45) NOT NULL,
    valor FLOAT NOT NULL
);

DESC Servico_Referencia;
SELECT * FROM Servico_Referencia;

-- ORDEM DE SERVIÇO
CREATE TABLE OS (
	idOrdem INT AUTO_INCREMENT PRIMARY KEY,
    data_inicio DATE NOT NULL,
    data_entrega DATE NOT NULL,
    status_servico ENUM("Pendente", "Em Andamento", "Concluído"),
    cliente_id INT,
    veiculo_id INT,
    equipe_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(idCliente)
        ON DELETE CASCADE,
    FOREIGN KEY (veiculo_id) REFERENCES Veiculo(idVeiculo)
        ON DELETE CASCADE,
	FOREIGN KEY (equipe_id) REFERENCES Equipe(idEquipe)
        ON DELETE CASCADE
);
DESC OS;
SELECT * FROM OS;

-- OS Tem serviços de referencia
CREATE TABLE Referencia_OS(
	idOS INT NOT NULL,
    idServico INT NOT NULL,
    valor FLOAT NOT NULL,
    FOREIGN KEY (idOS) REFERENCES OS(idOrdem)
        ON DELETE CASCADE,
    FOREIGN KEY (idServico) REFERENCES Servico_Referencia(idPreco_Referencia)
        ON DELETE CASCADE
);

DESC Referencia_OS;
SELECT * FROM Referencia_OS;

-- OS tem peças
CREATE TABLE Peca_OS(
	idOS INT NOT NULL,
    idPeca INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (idOS) REFERENCES OS(idOrdem)
        ON DELETE CASCADE,
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca)
        ON DELETE CASCADE
);

DESC Peca_OS;
SELECT * FROM Peca_OS;

-- autorização
CREATE TABLE Autorizacao(
	autorização BOOLEAN NOT NULL,
	idCliente INT NOT NULL,
    idOS INT NOT NULL,
    FOREIGN KEY (idOS) REFERENCES OS(idOrdem)
        ON DELETE CASCADE,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
        ON DELETE CASCADE
);

DESC Autorizacao;
SELECT * FROM Autorizacao;