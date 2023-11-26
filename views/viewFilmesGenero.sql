--Distribuição de filmes por gêneros.

SELECT *
FROM TITLE_BASICS
WHERE titleType = 'movie';

SELECT titleType, originalTitle, genres
FROM TITLE_BASICS
WHERE titleType = 'movie';

CREATE VIEW FilmesGenero
AS 
SELECT titleType, originalTitle, genres
FROM TITLE_BASICS
WHERE titleType = 'movie';

DROP VIEW FilmesGenero;