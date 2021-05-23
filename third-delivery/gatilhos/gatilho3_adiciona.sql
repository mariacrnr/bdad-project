-- When X occurs, check Y; if true, Z

--CREATE TRIGGER [IF NOT EXISTS] trigger_name 
--   [BEFORE|AFTER|INSTEAD OF] [INSERT|UPDATE|DELETE] 
--   ON table_name
--   [WHEN condition]
--BEGIN
-- statements;
--END;

/* Um subalterno não pode ter salário superior ao do seu gerente */
CREATE TRIGGER salário_por_posto_de_trabalho
    AFTER INSERT ON Hierarquia
    FOR EACH ROW
    WHEN SELECT salario FROM Funcionario WHERE Funcionario.id = NEW.idGerente <
        SELECT salario FROM Funcionario WHERE Funcionario.id = NEW.idSubalterno; 
     -- Se salario de funcionario.idGerente menor que salario de funcionario.idSubalterno
BEGIN
    UPDATE Funcionario
        SET salario = (SELECT salario FROM Funcionario WHERE Funcionario.id = NEW.idSubalterno)
    WHERE id = NEW.idGerente;

    -- salario de funcionario.idGerente igual a salario de funcionario.idSubalterno
END;