-- Média do número de garrafas e sofás (com 1 única casa decimal) por todas as reservas de cada cliente que tenha mais que 1 reserva por Lounge,
-- ordenadas pelo número de reservas em cada Lounge (decrescente).

.mode	columns
.headers	on
.nullvalue	NULL

DROP VIEW IF EXISTS ReservasPorLounge;

CREATE VIEW ReservasPorLounge AS
SELECT Lounge.idDiscoteca, Lounge.id AS idLounge, nome,
    COUNT(*) AS nrReservas, ROUND(AVG(nrGarrafas),1) AS mediaGarrafas, ROUND(AVG(nrSofas),1) AS mediaSofas
FROM Pessoa JOIN Membro USING(BI) 
    JOIN Reserva USING(BI), ReservaLounge, Lounge 
WHERE Reserva.id = ReservaLounge.idReserva 
    AND Lounge.id == ReservaLounge.idLounge 
        AND Membro.idDiscoteca = Lounge.idDiscoteca 
            AND tipo LIKE "VIP"
GROUP BY Lounge.id, Membro.BI
ORDER BY Lounge.id, nrReservas DESC;

-- Apresenta o id da Discoteca e do Lounge e o número de reservas em cada um, bem como o nome do cliente e a media de garrafas e sofas reservados.
-- São mostrados todos estes dados para facilitar a interpretação dos elementos pedidos na interrogação.
SELECT idDiscoteca, idLounge, nrReservas, nome, mediaGarrafas, mediaSofas
FROM ReservasPorLounge
WHERE nrReservas > 1
