-- Tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente VARCHAR(255) NOT NULL,
    emailCliente VARCHAR(255) NOT NULL UNIQUE
);

-- Tabela Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    NomeLivro VARCHAR(255) NOT NULL,
    DataCompra DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID) ON DELETE CASCADE ON UPDATE CASCADE
);

SELECT * FROM Clientes;

-- ===== INSERINDO DADOS NA TABELA CLIENTES =====
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES
('João Silva', 'joao.silva@email.com'),
('Maria Santos', 'maria.santos@email.com'),
('Pedro Oliveira', 'pedro.oliveira@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Carlos Souza', 'carlos.souza@email.com'),
('Fernanda Alves', 'fernanda.alves@email.com'),
('Roberto Gomes', 'roberto.gomes@email.com'),
('Juliana Mendes', 'juliana.mendes@email.com');

-- ===== INSERINDO DADOS NA TABELA COMPRAS =====
INSERT INTO Compras (ClienteID, NomeLivro, DataCompra) VALUES
(1, 'O Senhor dos Anéis', '2026-03-15 10:30:00'),
(1, 'Harry Potter e a Pedra Filosofal', '2026-03-20 14:45:00'),
(2, 'O Hobbit', '2026-03-18 09:15:00'),
(3, 'Cem Anos de Solidão', '2026-03-25 16:20:00'),
(4, 'Dom Casmurro', '2026-03-28 11:00:00'),
(5, 'Memórias Póstumas de Brás Cubas', '2026-03-30 13:30:00'),
(2, 'Fundação', '2026-03-22 15:45:00'),
(6, 'O Alienista', '2026-03-29 10:00:00'),
(7, 'Neuromancer', '2026-03-31 12:15:00'),
(8, 'Orgulho e Preconceito', '2026-04-01 14:00:00');
