-- Nome, marca e preço da bebida mais cara para cada bar.

.mode	columns
.headers	on
.nullvalue	NULL

SELECT idBar, nome, marca, maiorPreco
FROM (
    SELECT idBar, nome, marca, MAX(preco) AS maiorPreco
    FROM Bebida JOIN BarBebida USING(nome,marca)
        JOIN Bar
    WHERE Bar.id = BarBebida.idBar
    GROUP BY (idBar)
);