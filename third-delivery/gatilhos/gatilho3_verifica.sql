.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

INSERT INTO Funcionario VALUES (9000, 'Alfredo Conceição', 914548326, 57483133, 'Rua dos Anjos', 1000, 1); -- Funcionário com maior salário
INSERT INTO Funcionario VALUES (9001, 'Pedro Albuquerque', 914548327, 57483134, 'Rua dos Anjos', 900, 1); -- Funcionário com menor salário

SELECT id, salario FROM Funcionario WHERE Funcionario.id = 9000 OR Funcionario.id = 9001;

-- O salário do subalterno é superior ao do gerente (1000 > 900), logo o gatilho é acionado
INSERT INTO Hierarquia(idSubalterno, idGerente) VALUES (9000, 9001);

-- Os valor do salário do subalterno deve ser igual ao valor do seu gerente, de modo a que a relação de hierarquia seja mantida,
-- sem violar a restrição imposta
SELECT id, salario FROM Funcionario WHERE Funcionario.id = 9000 OR Funcionario.id = 9001; 
