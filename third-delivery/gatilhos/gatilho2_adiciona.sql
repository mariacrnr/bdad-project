-- When X occurs, check Y; if true, Z

--CREATE TRIGGER [IF NOT EXISTS] trigger_name 
--   [BEFORE|AFTER|INSTEAD OF] [INSERT|UPDATE|DELETE] 
--   ON table_name
--   [WHEN condition]
--BEGIN
-- statements;
--END;

/* A área total de uma discoteca é superior à area de todas as suas pistas, bengaleiros e */
CREATE TRIGGER areaTotal_menor_area_combinada_espaços
    AFTER INSERT ON Pista, Bengaleiro, CaixaPagamento, Lounge
    FOR EACH ROW
    WHEN  NEW.idDiscoteca.areaTotal < 
        ( (SELECT SUM(areaEspaco) FROM Pista WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(areaEspaco) FROM Bengaleiro WHERE idDiscoteca = NEW.idDiscoteca) +
        (SELECT SUM(areaEspaco) FROM CaixaPagamento WHERE idDiscoteca = NEW.idDiscoteca) + 
        (SELECT SUM(areaEspaco) FROM Lounge) WHERE idDiscoteca = NEW.idDiscoteca) );
BEGIN

END;