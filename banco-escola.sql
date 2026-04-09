-- 1. Criar o banco de dados
CREATE DATABASE IF NOT EXISTS escola;
USE escola;

-- 2. Tabela de alunos
CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- 3. Tabela de professores
CREATE TABLE professores (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

-- 4. Tabela de disciplinas
CREATE TABLE disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL
);

-- 5. Tabela de turmas
CREATE TABLE turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    ano INT NOT NULL
);

-- 6. Tabela de matrícula (relaciona alunos e turmas)
CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

-- 7. Tabela de aulas (relaciona disciplinas e turmas com professor)
CREATE TABLE aulas (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    id_disciplina INT NOT NULL,
    id_turma INT NOT NULL,
    id_professor INT NOT NULL,
    dia_semana ENUM('Segunda','Terça','Quarta','Quinta','Sexta') NOT NULL,
    horario TIME NOT NULL,
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);
