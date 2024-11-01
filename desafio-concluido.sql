/* 1 - Buscar o nome e ano dos filmes 
SELECT	Nome,
		Ano
FROM Filmes*/

/* 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano 
SELECT	Nome,
		Ano
FROM Filmes

ORDER BY 2*/

/* 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração 
SELECT	Nome,
		Ano,
		Duracao
FROM Filmes

WHERE NOME = 'De Volta para o Futuro'*/

/* 4 - Buscar os filmes lançados em 1997 
SELECT *
FROM Filmes

WHERE ANO = '1997'*/

/* 5 - Buscar os filmes lançados APÓS o ano 2000 
SELECT *
FROM Filmes

WHERE ANO > '2000'*/

/* 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente 
SELECT *
FROM Filmes

WHERE	Duracao > '100' 
		AND Duracao < '150'

ORDER BY Duracao*/

/* 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente 
SELECT	ANO, 
		COUNT(ANO) 'QUANTIDADE'
FROM Filmes

GROUP BY ANO

ORDER BY 2 DESC*/

/* 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome 
SELECT PrimeiroNome, UltimoNome
FROM Atores

WHERE Genero = 'M'*/

/* 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome 
SELECT PrimeiroNome, UltimoNome
FROM Atores

WHERE Genero = 'F'

ORDER BY 1*/

/* 10 - Buscar o nome do filme e o gênero 
SELECT	Filmes.Nome,
		(CASE WHEN Genero IS NULL THEN 'NAO FOI INFORMADO'
		ELSE GEN.Genero
		END)
FROM Filmes

LEFT JOIN FilmesGenero FG (NOLOCK)
	ON Filmes.Id = FG.IdFilme

LEFT JOIN Generos GEN (NOLOCK)
	ON FG.IdGenero = GEN.Id*/

/* 11 - Buscar o nome do filme e o gênero do tipo "Mistério" 
SELECT	Filmes.Nome,
		GEN.Genero
FROM Filmes

LEFT JOIN FilmesGenero FG (NOLOCK)
	ON Filmes.Id = FG.IdFilme

LEFT JOIN Generos GEN (NOLOCK)
	ON FG.IdGenero = GEN.Id

WHERE GEN.Genero = 'Mistério'*/

/* 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel 
SELECT	Filmes.Nome,
		(CASE
			WHEN ATR.PrimeiroNome IS NULL THEN 'ATOR NAO INFORMADO'
			ELSE ATR.PrimeiroNome
		END) PrimeiroNome,
		(CASE
			WHEN ATR.UltimoNome IS NULL THEN 'ATOR NAO INFORMADO'
			ELSE ATR.UltimoNome
		END) UltimoNome,
		(CASE
			WHEN EF.Papel IS NULL THEN 'PAPEL NAO INFORMADO'
			ELSE EF.Papel
		END) Papel
		
FROM FILMES

LEFT JOIN ElencoFilme EF (NOLOCK)
	ON FILMES.Id = EF.IdFilme

LEFT JOIN Atores ATR (NOLOCK)
	ON EF.IdAtor = ATR.Id*/