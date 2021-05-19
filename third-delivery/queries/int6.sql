-- Média do número de garrafas e sofás (com 1 única casa decimal) por todas as reservas de cada cliente que tenha mais que 1 reserva por Lounge,
-- ordenadas pelo número de reservas em cada Lounge (decrescente).

.mode	columns
.headers	on
.nullvalue	NULL

DROP VIEW IF EXISTS ReservasPorLounge;

CREATE VIEW ReservasPorLounge AS
SELECT Lounge.idDiscoteca, Lounge.id AS idLounge, COUNT(*) AS nrReservas, ROUND(AVG(nrGarrafas),1) AS mediaGarrafas, ROUND(AVG(nrSofas),1) AS mediaSofas,  nome
FROM Pessoa JOIN Membro USING(BI) 
    JOIN Reserva USING(BI), ReservaLounge, Lounge 
WHERE Reserva.id = ReservaLounge.idReserva 
    AND Lounge.id == ReservaLounge.idLounge 
        AND Membro.idDiscoteca = Lounge.idDiscoteca 
            AND tipo LIKE "VIP"
GROUP BY Lounge.id, Membro.BI
ORDER BY Lounge.id, nrReservas DESC;

SELECT idDiscoteca, nome, idLounge, mediaGarrafas, mediaSofas
FROM ReservasPorLounge
WHERE nrReservas > 1
