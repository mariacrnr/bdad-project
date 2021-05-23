-- Lista dos Bartenders que são gerentes com o seu nome, id, id de Gerente e salario, organizada por hierarquia, isto é,
-- os gerentes principais (que não têm gerente) devem estar no topo, de seguida os seus respetivos subalternos e assim sucessivamente.

.mode	columns
.headers	on
.nullvalue	NULL

DROP VIEW IF EXISTS BartenderHierarquia;

-- Apresenta o id, id do gerente correspondente, nome e salario de todos os bartenders
CREATE VIEW BartenderHierarquia AS 
SELECT Funcionario.id, idGerente, nome, salario
FROM Funcionario JOIN Bartender 
    JOIN Hierarquia 
WHERE Bartender.id = Funcionario.id  
    AND Funcionario.id = Hierarquia.idSubalterno;

-- Organiza todos os funcionários por hierarquia, no topo da tabela estão os gerentes principais de seguida os seus subalternos e por aí em diante.
WITH RECURSIVE BartenderHierarquiaOrdenada(id, idGerente, nome, salario) AS (

    SELECT id, idGerente, nome, salario
    FROM BartenderHierarquia
    WHERE idGerente IS NULL 

    UNION ALL

    SELECT BH.id, BH.idGerente, BH.nome, BH.salario
    FROM BartenderHierarquia BH
        JOIN BartenderHierarquiaOrdenada BHO ON
            BHO.id = BH.idGerente
)

-- Apresenta o id, id do Gerente, nome e salario dos bartenders que são gerentes.
SELECT id, idGerente, nome, salario
FROM BartenderHierarquiaOrdenada 
WHERE id IN (
    SELECT idGerente 
    FROM BartenderHierarquiaOrdenada
)
