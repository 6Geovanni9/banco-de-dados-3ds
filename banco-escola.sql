-- Criação da tabela de alunos
CREATE TABLE IF NOT EXISTS alunos (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(100)
);

-- Criação da tabela de cursos
CREATE TABLE IF NOT EXISTS cursos (
    id_curso INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_curso VARCHAR(100) NOT NULL,
    duracao_meses INT
);

-- Criação da tabela de matrículas
CREATE TABLE IF NOT EXISTS matriculas (
    id_matricula INTEGER PRIMARY KEY AUTOINCREMENT,
    id_aluno INT,
    id_curso INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso) ON DELETE CASCADE ON UPDATE CASCADE
);
