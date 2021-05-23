-- Apenas membros VIPs de uma discoteca podem reservar um lounge nessa discoteca 
.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER reservar_lounge_exclusivo_membros_VIP
    AFTER INSERT ON ReservaLounge
    FOR EACH ROW
    WHEN 
        SELECT * 
        FROM    (SELECT * 
                FROM ReservaLounge 
                    JOIN Lounge
                WHERE ReservaLounge.idLounge = NEW.idLounge;) AS Lounge
            JOIN     

        SELECT * FROM Reserva JOIN Lounge ON Lounge.idDiscoteca = NEW.idLounge.idDiscoteca <> (Membro.idDiscoteca com NEW.idReserva.BI)
    -- Se a pessoa referenciada por Reserva.BI NÃO for membro VIP na discoteca do Lounge
BEGIN
    DELETE FROM ReservaLounge
    WHERE ReservaLounge.idReserva = NEW.idReserva AND ReservaLounge.idLounge;
END;