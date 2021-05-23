.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

/* A área total de uma discoteca é superior à area de todas as suas pistas, bengaleiros e lounges.
    Impede a criação de novos espaços caso ultrapasse o limite.*/

CREATE TRIGGER areaTotal_menor_area_combinada_espaços
    AFTER INSERT ON Pista
    FOR EACH ROW
    WHEN  NEW.idDiscoteca.areaTotal < 
        ( (SELECT SUM(Pista.areaEspaco) FROM Pista WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(Bengaleiro.areaEspaco) FROM Bengaleiro WHERE idDiscoteca = NEW.idDiscoteca) +
        (SELECT SUM(CaixaPagamento.areaEspaco) FROM CaixaPagamento WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(Lounge.areaEspaco) FROM Lounge) WHERE idDiscoteca = NEW.idDiscoteca) );
BEGIN
    DELETE FROM Pista
    WHERE Pista.id = NEW.id;
END;




CREATE TRIGGER areaTotal_menor_area_combinada_espaços
    AFTER INSERT ON Bengaleiro
    FOR EACH ROW
    WHEN  NEW.idDiscoteca.areaTotal < 
        ( (SELECT SUM(areaEspaco) FROM Pista WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(areaEspaco) FROM Bengaleiro WHERE idDiscoteca = NEW.idDiscoteca) +
        (SELECT SUM(areaEspaco) FROM CaixaPagamento WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(areaEspaco) FROM Lounge) WHERE idDiscoteca = NEW.idDiscoteca) );
BEGIN
    DELETE FROM Bengaleiro
    WHERE Bengaleiro.id = NEW.id;
END;




CREATE TRIGGER areaTotal_menor_area_combinada_espaços
    AFTER INSERT ON CaixaPagamento
    FOR EACH ROW
    WHEN  NEW.idDiscoteca.areaTotal < 
        ( (SELECT SUM(areaEspaco) FROM Pista WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(areaEspaco) FROM Bengaleiro WHERE idDiscoteca = NEW.idDiscoteca) +
        (SELECT SUM(areaEspaco) FROM CaixaPagamento WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(areaEspaco) FROM Lounge) WHERE idDiscoteca = NEW.idDiscoteca) );
BEGIN
    DELETE FROM CaixaPagamento
    WHERE CaixaPagamento.id = NEW.id;
END;




CREATE TRIGGER areaTotal_menor_area_combinada_espaços
    AFTER INSERT ON Lounge
    FOR EACH ROW
    WHEN  NEW.idDiscoteca.areaTotal < 
        ( (SELECT SUM(areaEspaco) FROM Pista WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(areaEspaco) FROM Bengaleiro WHERE idDiscoteca = NEW.idDiscoteca) +
        (SELECT SUM(areaEspaco) FROM CaixaPagamento WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(areaEspaco) FROM Lounge) WHERE idDiscoteca = NEW.idDiscoteca) );
BEGIN
    DELETE FROM Lounge
    WHERE Lounge.id = NEW.id;
END;