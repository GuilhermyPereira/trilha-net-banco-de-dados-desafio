SELECT Nome, Ano FROM Filmes

SELECT * FROM Filmes
ORDER BY Ano

SELECT * FROM Filmes
WHERE Nome = 'De volta para o futuro'

SELECT * FROM Filmes
WHERE Ano = '1997'

SELECT * FROM Filmes
WHERE Ano > '2000'

SELECT * FROM Filmes
WHERE Duracao > '100' AND Duracao < '150'
ORDER BY Duracao



SELECT 
    Ano, 
    COUNT(*) AS Quantidade
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    COUNT(Duracao) DESC;


SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id

SELECT F.Nome AS NomeFilme, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'


SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, FA.Papel
FROM Filmes AS F
JOIN ElencoFilme AS FA ON F.Id = FA.IdFilme
JOIN Atores AS A ON FA.IdAtor = A.Id
