.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

INSERT INTO Discoteca VALUES (11, 'Kiss', 'Algarve', 'Hugo Gonçalves', 9500); -- Discoteca nº11
INSERT INTO Funcionario VALUES (9000, 'Alfredo Conceição', 914548326, 57483133, 'Rua dos Anjos', 1000, 11);
INSERT INTO Funcionario VALUES (9001, 'Pedro Albuquerque', 914548327, 57483134, 'Rua dos Anjos', 900, 11);

SELECT id, salario FROM Funcionario WHERE Funcionario.id = 9000 OR Funcionario.id = 9001;

INSERT INTO Hierarquia(idSubalterno, idGerente) VALUES (9000, 9001);

SELECT id, salario FROM Funcionario WHERE Funcionario.id = 9000 OR Funcionario.id = 9001; 