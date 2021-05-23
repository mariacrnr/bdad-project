-- Apenas artistas do tipo convidado podem ter uma atuação 
.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Verifica se as atuações adicionadas são feitas por apenas artistas do tipo convidado
CREATE TRIGGER atuacao_apenas_convidados
    BEFORE INSERT ON Atuacao
    FOR EACH ROW
    WHEN EXISTS (
        SELECT * 
        FROM Artista
        WHERE Artista.id = NEW.idArtista
            AND Artista.tipo LIKE "residente"
    )
BEGIN
    SELECT RAISE(ABORT, 'Apenas artistas convidados podem ter uma atuacao!');
END;