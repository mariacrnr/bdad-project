-- Número de total de membros VIP e regulares de todas as discotecas

.mode	columns
.headers	on
.nullvalue	NULL

SELECT tipo, COUNT(*) AS nrTotalMembros
FROM Membro NATURAL JOIN Pessoa 
GROUP BY tipo;
