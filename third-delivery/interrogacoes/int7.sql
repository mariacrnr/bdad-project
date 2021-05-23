-- Nome dos artistas e da respetiva pista do género musical trance, 
-- que atuaram entre a 1:00 e as 4:00 horas, em discotecas com um número mínimo de 6 membros VIP.
.mode	columns
.headers	on
.nullvalue	NULL

DROP VIEW IF EXISTS membrosVIPDiscoteca;

-- Apresenta o número de membros VIP de cada discoteca que tem pelo menos 6 membros VIP
CREATE VIEW membrosVIPDiscoteca AS
SELECT idDiscoteca, nrMembrosVIP
FROM (
    SELECT idDiscoteca, COUNT(tipo) AS nrMembrosVIP
    FROM Discoteca JOIN Membro 
    WHERE Membro.idDiscoteca = Discoteca.id 
        AND tipo LIKE "VIP" 
    GROUP BY(idDiscoteca)
) WHERE nrMembrosVIP > 5;

-- Apresenta o nome do artista e a pista onde atua, do género trance e entre as 01:00 e 04:00 horas.
SELECT Artista.nome AS nomeArtista, Pista.nome AS nomePista
FROM Artista JOIN Atuacao 
    JOIN Pista NATURAL JOIN membrosVIPDiscoteca 
WHERE Artista.id = Atuacao.idArtista 
    AND Pista.id = Atuacao.idPista
        AND generoMusica LIKE "trance"
            AND horaComeco LIKE "01:00" AND horaFim LIKE "04:00";