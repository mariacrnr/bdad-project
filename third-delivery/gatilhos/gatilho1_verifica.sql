.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT COUNT(*) AS reservaInvalida FROM ReservaLounge WHERE ReservaLounge.idReserva = 51 AND ReservaLounge.idLounge = 2;

-- Membro de BI 25475859 é um membro regular da Discoteca 1, logo  a sua reserva não pode ser inserida num lounge dessa mesma discoteca.
INSERT INTO Reserva(id, dia, hora, nrGarrafas, nrSofas, BI)
VALUES (51,'21-08-2021', '03:00', 6, 1, 25475859);
INSERT INTO ReservaLounge(idReserva, idLounge) 
VALUES (51, 2);

-- O valor em ambas as tabelas deverá ser 0 dado que a reserva não pode ser efetuada.
SELECT COUNT(*) AS reservaInvalida FROM ReservaLounge WHERE ReservaLounge.idReserva = 51 AND ReservaLounge.idLounge = 2;
