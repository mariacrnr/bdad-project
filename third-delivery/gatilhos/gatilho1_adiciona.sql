.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Apenas membros VIPs de uma discoteca podem reservar um lounge nessa discoteca 
CREATE TRIGGER reservar_lounge_apenas_membros_VIP
    AFTER INSERT ON ReservaLounge
    FOR EACH ROW
    WHEN NOT EXISTS (
        SELECT *
        FROM Membro 
            WHERE Membro.BI = (
                SELECT BI
                FROM Reserva
                WHERE id = NEW.idReserva) 
            AND Membro.idDiscoteca = (
                SELECT idDiscoteca
                FROM Lounge
                WHERE id = NEW.idLounge)
            AND Membro.tipo = 'VIP') 
BEGIN
    DELETE FROM ReservaLounge
    WHERE ReservaLounge.idReserva = NEW.idReserva 
    AND ReservaLounge.idLounge = NEW.idLounge;
END;