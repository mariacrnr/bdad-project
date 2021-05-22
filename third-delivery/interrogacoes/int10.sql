-- Nome, marca e stock das bebidas que estão em todos os bares, ordenadas por stock (decrescente).

.mode	columns
.headers	on
.nullvalue	NULL

-- Verifica as bebidas que não estão em nenhum em todos os bares, e apresenta as que não se encontram nessa tabela.
SELECT nome, marca, stock
FROM Bebida
WHERE (nome, marca) NOT IN (
    SELECT nome AS nomeAux, marca AS marcaAux
    FROM Bebida JOIN Bar
    WHERE idPista NOT IN (
        SELECT idPista
        FROM BarBebida JOIN Bar 
        WHERE BarBebida.idBar = Bar.id
           AND BarBebida.nome = nomeAux
                AND BarBebida.marca = marcaAux
    )
) 
ORDER BY (stock) DESC;