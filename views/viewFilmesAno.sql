--Número de filmes lançados a cada ano na última década.

SELECT TOP 100 * FROM TITLE_BASICS;

SELECT *
FROM TITLE_BASICS
WHERE titleType = 'movie';

SELECT titleType, originalTitle, startYear
FROM TITLE_BASICS
WHERE titleType = 'movie';

CREATE VIEW FilmesAno
AS
SELECT titleType, originalTitle, startYear
FROM TITLE_BASICS
WHERE titleType = 'movie';