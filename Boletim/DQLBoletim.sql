USE boletim;

/* DQL - Data Query Language */
-- Selecionar todos os dados da tabela
SELECT * FROM Aluno;

--Selecionar um dado específico
SELECT * FROM Aluno WHERE IdAluno = 1 OR IdAluno = 2;

-- Selecionar como uma busca específica
SELECT * FROM Aluno WHERE Nome LIKE '%An%' AND Ra LIKE '%35%';

-- Ordenação por forma crescente (padrão)
SELECT * FROM Aluno ORDER BY Nome;

-- Ordenação por forma crescente (crescente)
SELECT * FROM Aluno ORDER BY Nome ASC;

-- Ordenação por forma crescente (decrescente)
SELECT * FROM Aluno ORDER BY Nome DESC;

-- Selecionar dados com condições especiais
SELECT * FROM Aluno WHERE IdAluno > 1 AND IdAluno < 5;

-- Selecionar dados entre valores específicos
SELECT * FROM Trabalho WHERE DataEntrega BETWEEN '2020-08-05T00:00:00' AND '2020-08-15T23:00:00'


/* JOINS */
USE boletim

SELECT
	Aluno.Nome,
	Materia.Titulo,
	Trabalho.Nota

FROM Trabalho
	INNER JOIN Aluno ON Trabalho.IdAluno = Aluno.IdAluno
	INNER JOIN Materia ON Trabalho.IdMateria = Materia.IdMateria
;
