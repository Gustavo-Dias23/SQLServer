/*Criado o banco de dados musica*/
CREATE DATABASE musica;

/*Criada a Tabela usuario*/

CREATE TABLE usuario(
IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(100) NOT NULL,
Permicao VARCHAR(100) NOT NULL,
Senha VARCHAR(20) NOT NULL,
Email VARCHAR(100) NOT NULL

);

/*Criada a tabela estilo*/
CREATE TABLE estilo(
IdEstilo INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(50) NOT NULL
);

/*Criada a tabela artista*/
CREATE TABLE artista(
IdArtista INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(50),

-- Adicionado o FK do estilo
IdEstilo INT FOREIGN KEY REFERENCES estilo(IdEstilo)
);

/*Criada a Tabela ALBUM*/
CREATE TABLE album(
IdAlbum INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(50) NOT NULL,
DataLacamento DATETIME,
QtdMinutos INT,

-- Adicionado o FK do Artista
IdArtista INT FOREIGN KEY REFERENCES artista(IdArtista)
);