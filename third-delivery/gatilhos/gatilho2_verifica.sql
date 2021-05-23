.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

--Não ativa o gatilho dado que o artista 3 é do tipo convidado
SELECT * FROM Atuacao WHERE idArtista = 3 AND idPista = 6;
INSERT INTO Atuacao (idArtista, idPista, horaComeco, horaFim, duracao) 
VALUES (3, 6, "00:00", "02:00", "02:00");
SELECT * FROM Atuacao WHERE idArtista = 3 AND idPista = 6;

--Gatilho é ativo dado que o artista é do tipo residente logo não tem uma atuação definida.
SELECT * FROM Atuacao WHERE idArtista = 26 AND idPista = 4;
INSERT INTO Atuacao (idArtista, idPista, horaComeco, horaFim, duracao) 
VALUES (20, 4, "01:00", "03:00", "02:00");
SELECT * FROM Atuacao WHERE idArtista = 26 AND idPista = 4;