-- Nomes dos membros VIP que não têm reservas em nenhuma discoteca
-- NOTA: Para complicar fazer por discoteca NÃO SEI COMO ASS MARIA

.mode	columns
.headers	on
.nullvalue	NULL

SELECT nome As VIPsSemReservas
FROM Pessoa NATURAL JOIN Membro 
WHERE tipo LIKE "VIP" AND BI NOT IN(
    SELECT DISTINCT BI 
    FROM Reserva NATURAL JOIN Membro 
    WHERE tipo LIKE "VIP"
);

--Não se precisa de verificar se a reserva está associada a algum Lounge dado que se o membro não estiver na tabela de reservas,
--também não tem uma reserva associada a algum Lounge.
