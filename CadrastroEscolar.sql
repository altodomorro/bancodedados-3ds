-- Inserindo dados na tabela Aluno
INSERT INTO Aluno (id_aluno, nome, idade)
VALUES
(1, 'Ana Costa', 18),
(2, 'João Silva', 20),
(3, 'Maria Oliveira', 19),
(4, 'Marcos Silva', 18);

-- Inserindo dados na tabela professor
INSERT INTO  Professor (id_professor, nome_professor, cpf_professor)
VALUES
(1, 'Julia', 91234675732),
(2, 'Marcos', 56472389725),
(3, 'Pedro', 564896234903);

-- Inserindo dados na tabela escola
INSERT INTO  Escola (id_escola, nome_escola, cnpj_escola)
VALUES
(1, 'Julia Vanderlei', 91234675732345),
(2, 'Marcos Antonio', 56472389725896),
(3, 'Pedro MArtins', 564896234903534);

 SELECT * FROM Aluno;
