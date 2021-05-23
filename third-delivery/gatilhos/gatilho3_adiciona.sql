.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Um subalterno não pode ter salário superior ao do seu gerente
CREATE TRIGGER salario_por_posto_de_trabalho
    AFTER INSERT ON Hierarquia
    FOR EACH ROW
    WHEN (
        SELECT salario
        FROM Funcionario
        WHERE Funcionario.id = NEW.idGerente)
        < (
        SELECT salario 
        FROM Funcionario
        WHERE Funcionario.id = NEW.idSubalterno)
BEGIN
    UPDATE Funcionario
        SET salario = (
            SELECT salario
            FROM Funcionario
            WHERE Funcionario.id = NEW.idSubalterno)
    WHERE id = NEW.idGerente;
END;