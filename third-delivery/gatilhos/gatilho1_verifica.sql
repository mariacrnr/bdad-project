.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT COUNT(*) FROM ReservaLounge WHERE ReservaLounge.idReserva = 95 AND ReservaLounge.idLounge = 95;

INSERT INTO Pessoa VALUES (57483132, 'Marcelo', 19, 914548325); -- Pessoa com BI 57483132
INSERT INTO Discoteca VALUES (10, 'Bliss', 'Algarve', 'Rui Pereira', 9500); -- Discoteca nº10
INSERT INTO Membro VALUES (57483132, 10, 536883441, 'regular'); -- Membro com BI 57483132 da discoteca nº10

INSERT INTO Reserva VALUES (95, '21-08-2021', '03:00', 6, 1, 57483132); -- Reserva nº95 do membro 57483132
INSERT INTO Lounge VALUES (95, 500, 10); -- Lounge nº95 da discoteca nº10

INSERT INTO ReservaLounge VALUES (95, 95);

SELECT COUNT(*) FROM ReservaLounge WHERE ReservaLounge.idReserva = 95 AND ReservaLounge.idLounge = 95;