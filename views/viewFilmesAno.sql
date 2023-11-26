--N�mero de filmes lan�ados a cada ano na �ltima d�cada.

SELECT TOP 100 * FROM TITLE_BASICS;

SELECT *
FROM TITLE_BASICS
WHERE titleType = 'movie';

SELECT titleType, originalTitle, startYear
FROM TITLE_BASICS
WHERE titleType = 'movie' AND startYear >= '2010';

CREATE VIEW FilmesAno
AS
SELECT titleType, originalTitle, startYear
FROM TITLE_BASICS
WHERE titleType = 'movie' AND startYear >= '2010';

DROP VIEW FilmesAno;