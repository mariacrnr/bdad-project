-- Nome do artista e da pista do bar principal (com maior stock de bebidas), onde começa a atuar às 03:00 horas.

.mode	columns
.headers	on
.nullvalue	NULL

DROP VIEW IF EXISTS mainBar;

-- Apresenta o id e o nome da pista do bar principal, bem como o stock total correspondente.
CREATE VIEW mainBar AS
SELECT idPista, nomePista, MAX(totalStock) AS mainBarStock
FROM (
    SELECT idPista, Pista.nome AS nomePista, SUM(stock) AS totalStock
    FROM Bebida JOIN BarBebida 
        JOIN Bar JOIN Pista 
    WHERE Bebida.nome = BarBebida.nome
        AND Bebida.marca = BarBebida.marca
            AND Bar.id = BarBebida.idBar
                AND Bar.idPista = Pista.id
    GROUP BY (idBar)
);

-- Apresenta o nome do artista e da pista onde atua às 03:00 horas, pista essa que corresponde ao bar com maior stock de bebidas
SELECT nome AS nomeArtista, nomePista
FROM mainBar JOIN Atuacao USING(idPista)
    JOIN Artista
WHERE Atuacao.idArtista = Artista.id
    AND horaComeco LIKE "03:00";