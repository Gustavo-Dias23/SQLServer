USE musica

SELECT * FROM estilo;

SELECT * FROM album WHERE DataLacamento BETWEEN '2013-01-01T00:00:00' AND '2015-01-01T00:00:00'

SELECT * FROM artista  WHERE IdArtista >0 AND IdArtista <2;

-- JOINS
SELECT
	Artista.Nome,
	Album.Nome
FROM Artista
	RIGHT JOIN Album ON Artista.IdArtista = Album.IdArtista
