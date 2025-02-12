SELECT NOME, ANO FROM Filmes
ORDER BY ANO;

SELECT NOME, ANO, DURACAO FROM Filmes
WHERE NOME = 'De Volta para o Futuro';

SELECT * FROM Filmes
WHERE ANO = 1997;

SELECT * FROM Filmes
WHERE ANO > 2000;

SELECT * FROM Filmes
WHERE Duracao > 100
AND Duracao < 150
ORDER BY Duracao;

SELECT ANO, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY ANO
ORDER BY SUM(Duracao) DESC;

SELECT * FROM Atores
WHERE Genero = 'M';

SELECT * FROM Atores
WHERE GENERO = 'F'
ORDER BY PrimeiroNome;

SELECT f.Nome, g.Genero FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON fg.IdFilme = f.Id
INNER JOIN Generos AS g ON g.Id = fg.IdGenero;

SELECT f.Nome, g.Genero FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON fg.IdFilme = f.Id
INNER JOIN Generos AS g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes AS f 
INNER JOIN ElencoFilme ef on ef.IdFilme = f.Id
INNER JOIN Atores AS a ON a.Id = ef.IdAtor;
