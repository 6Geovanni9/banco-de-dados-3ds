-- Criação da tabela LIVROS
CREATE TABLE IF NOT EXISTS LIVROS (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100),
    ano_publicacao INT,
    genero VARCHAR(50)
);

-- Inserção de alguns registros na tabela LIVROS
INSERT INTO LIVROS (titulo, autor, ano_publicacao, genero) VALUES
('Dom Casmurro', 'Machado de Assis', 1899, 'Romance'),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943, 'Infantil'),
('1984', 'George Orwell', 1949, 'Ficção Científica');

-- Exibir todos os registros da tabela LIVROS
SELECT * FROM LIVROS;
