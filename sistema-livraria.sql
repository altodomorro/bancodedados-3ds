-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) UNIQUE NOT NULL
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);




-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente)
VALUES
    (1, 'Maria Silva', 'maria.silva@email.com'),
    (2, 'João Pereira', 'joao.pereira@email.com'),
    (3, 'Ana Costa', 'ana.costa@email.com'),
    (4, 'Carlos Souza', 'carlos.souza@email.com');

-- Inserindo dados na tabela Compras
INSERT INTO Compras (CompraID, ClienteID, NomeLivro)
VALUES
    (101, 1, 'Dom Casmurro'),
    (102, 2, 'O Senhor dos Anéis'),
    (103, 1, 'A Moreninha'),
    (104, 3, '1984'),
    (105, 4, 'O Pequeno Príncipe');

 SELECT * FROM Clientes;

SELECT c.nomeCliente, co.NomeLivro
FROM Compras co
INNER JOIN Clientes c
    ON co.ClienteID = c.ID;
