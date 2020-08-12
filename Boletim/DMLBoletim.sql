USE boletim;

/* DML - Data Manipulation Language */
--INSERT - Inserir dados
INSERT INTO Aluno (Nome, Ra, Idade) VALUES ('João', 'R1236', 16);
INSERT INTO Materia (Titulo) VALUES ('Matemática');
INSERT INTO Trabalho (DataEntrega, IdAluno, IdMateria) VALUES ('2020-08-06T23:59:59', 3, 1);

-- UPDATE - Alterar dados 
UPDATE Trabalho SET
	Nota = 9.57,
	IdAluno = 2
WHERE IdTrabalho = 1;

-- DELETE - Deletar dados
DELETE FROM Trabalho WHERE IdTrabalho = 2;

-- DQL de consulta simples
SELECT * FROM Aluno;
SELECT * FROM Materia;
SELECT * FROM Trabalho;

-- Alterar tabela para aceitar números quebrados:
ALTER TABLE Trabalho ALTER COLUMN Nota DECIMAL (10,2)