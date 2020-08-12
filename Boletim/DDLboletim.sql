/*	DDL  */

CREATE DATABASE boletim;

/* Usamos o banco efetivamente */
USE boletim;
GO

/* Excluir o banco */
/* DROP DATABASE boletim; */

/* Criada a tabela Aluno */
/* IDENTITY -> Gera os IDs automaticamente de forma sequencial*/
CREATE TABLE aluno (
	idAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT 
);

/* Criada a tabela Materia */
CREATE TABLE materia (
	IdMateria INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50) NOT NULL,
);

/* Criada a tabela Trabalho */
CREATE TABLE trabalho (
	IdTrabalho INT PRIMARY KEY IDENTITY NOT NULL,
	Nota DECIMAL,

	-- Chamamos as chaves estrangeiras (Foreign Keys)
	IdAluno INT FOREIGN KEY REFERENCES aluno (IdAluno),
	IdMateria INT FOREIGN KEY REFERENCES materia (IdMateria)
);

/* Incluida a coluna esquecida: DataEntrega */
ALTER TABLE trabalho ADD DataEntrega DATETIME;

/* Criada coluna de teste para excluí-la após */
ALTER TABLE trabalho ADD teste INT

-- Excluindo a coluna
ALTER TABLE trabalho DROP COLUMN teste;