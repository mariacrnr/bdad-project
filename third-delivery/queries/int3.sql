-- Área de espaço livre (não ocupado pelas zonas) em cada discoteca
-- NOTA: Dizia para preferir joins a subqueries mas aqui não sei se dá para fazer com joins, procurar maneira ?? ASS MARIA

.mode	columns
.headers	on
.nullvalue	NULL

-- Uso de Views é pertinente para a modularidade da interrogação dado que apresenta várias sub-interrogações.

DROP VIEW IF EXISTS areaLounge;
DROP VIEW IF EXISTS areaCaixa;
DROP VIEW IF EXISTS areaBengaleiro;
DROP VIEW IF EXISTS areaPista;
DROP VIEW IF EXISTS areaOcupada;

-- Representa a área total ocupada pelos Lounges de cada Discoteca
CREATE VIEW AreaLounge AS
SELECT idDiscoteca, SUM(Lounge.areaEspaco) AS totalAreaLounge 
FROM Lounge 
GROUP BY (idDiscoteca);

-- Representa a área total ocupada pelas Caixas de cada Discoteca
CREATE VIEW AreaCaixa AS
SELECT idDiscoteca, SUM(CaixaPagamento.areaEspaco) AS totalAreaCaixa 
FROM CaixaPagamento 
GROUP BY (idDiscoteca);

-- Representa a área total ocupada pelos Bengaleiros de cada Discoteca
CREATE VIEW AreaBengaleiro AS
SELECT idDiscoteca, SUM(Bengaleiro.areaEspaco) AS totalAreaBengaleiro 
FROM Bengaleiro 
GROUP BY (idDiscoteca);

-- Representa a área total ocupada pelas Pistas de cada Discoteca
CREATE VIEW AreaPista AS
SELECT idDiscoteca, SUM(Pista.areaEspaco) AS totalAreaPista  
FROM Pista 
GROUP BY (idDiscoteca);

-- Representa a área total ocupada por todos os espaços de cada Discoteca
CREATE VIEW AreaOcupada AS
SELECT idDiscoteca, (totalAreaLounge + totalAreaCaixa + totalAreaBengaleiro + totalAreaPista) AS areaOcupada
FROM AreaLounge NATURAL JOIN AreaCaixa NATURAL JOIN areaBengaleiro NATURAL JOIN areaPista;

-- Apresenta as áreas ocupadas, totais e livres de cada Discoteca
SELECT idDiscoteca, areaOcupada, areaTotal, (areaTotal - areaOcupada) AS areaLivre 
FROM AreaOcupada JOIN Discoteca 
WHERE Discoteca.id = areaOcupada.idDiscoteca;
