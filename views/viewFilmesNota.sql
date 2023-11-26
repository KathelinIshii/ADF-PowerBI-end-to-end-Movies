--Tendência de avaliação média para os principais gêneros ao longo dos anos.

SELECT *
FROM TITLE_BASICS
WHERE titleType = 'movie';

SELECT TOP 100 * FROM TITLE_RATINGS;

SELECT TB.originalTitle, TB.startYear, TB.genres, TR.averageRating, TR.numVotes
FROM TITLE_BASICS AS TB
JOIN TITLE_RATINGS AS TR
ON TB.tconst = TR.tconst
WHERE TB.titleType = 'movie'  AND startYear >= '2010';

CREATE VIEW FilmesNota
AS
SELECT TB.originalTitle, TB.startYear, TB.genres, TR.averageRating, TR.numVotes
FROM TITLE_BASICS AS TB
JOIN TITLE_RATINGS AS TR
ON TB.tconst = TR.tconst
WHERE TB.titleType = 'movie'  AND startYear >= '2010';

DROP VIEW FilmesNota;