USE musica;

INSERT INTO estilo (Nome) VALUES ('Rock');

INSERT INTO artista (Nome, IdEstilo) VALUES ('Slash', 1);

INSERT INTO album (Nome, DataLacamento, QtdMinutos, IdArtista) VALUES ('World on Fire', '2014-09-15T23:59:59', 77, 1);

INSERT INTO usuario (Nome, Permicao, Email, Senha) VALUES ('Gustavo', 'ADM', 'dias.gustavo@dias.com', '**********');











SELECT * FROM artista;
SELECT * FROM estilo;
SELECT * FROM album; 
SELECT * FROM usuario;