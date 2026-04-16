CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Cidade VARCHAR(50)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    Valor DECIMAL(10,2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
-- Inserindo clientes
INSERT INTO Clientes (ClienteID, Nome, Email, Cidade)
VALUES 
(1, 'Maria Silva', 'maria.silva@email.com', 'Curitiba'),
(2, 'João Souza', 'joao.souza@email.com', 'São Paulo'),
(3, 'Ana Costa', 'ana.costa@email.com', 'Rio de Janeiro');

-- Inserindo pedidos
INSERT INTO Pedidos (PedidoID, ClienteID, DataPedido, Valor)
VALUES
(101, 1, '2026-04-10', 250.00),
(102, 2, '2026-04-12', 180.50),
(103, 1, '2026-04-15', 320.75);

