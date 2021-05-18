-- Área de espaço livre (não ocupado pelas zonas) em cada discoteca
-- INCOMPLETO FALTA SOMAR LINHAS E SUBTRAIR À AREA TOTAL COMO SE FAZ I DONT KNOW MAS DEPOIS DESCUBRO ASS MARIA
.mode	columns
.headers	on
.nullvalue	NULL

/*SELECT DISTINCT Lounge.idDiscoteca, Lounge.areaEspaco AS areaLounge, CaixaPagamento.areaEspaco AS areaCaixa, 
Pista.areaEspaco AS areaPista, Bengaleiro.areaEspaco AS areaBengaleiro
FROM Lounge JOIN CaixaPagamento USING(idDiscoteca) JOIN Bengaleiro USING(idDiscoteca) JOIN Pista USING(idDiscoteca);*/

SELECT DISTINCT * FROM (
    SELECT idDiscoteca, SUM(Lounge.areaEspaco) AS areaLounge 
    FROM Lounge 
    GROUP BY (idDiscoteca)) JOIN (
        SELECT idDiscoteca, SUM(CaixaPagamento.areaEspaco) AS areaCaixa 
        FROM CaixaPagamento 
        GROUP BY (idDiscoteca)) USING(idDiscoteca) JOIN (
            SELECT idDiscoteca, SUM(Bengaleiro.areaEspaco) AS areaBengaleiro 
            FROM Bengaleiro GROUP BY (idDiscoteca)) 
            USING(idDiscoteca) JOIN (
                SELECT idDiscoteca, SUM(Pista.areaEspaco) AS areaPista 
                FROM Pista 
                GROUP BY (idDiscoteca)) USING(idDiscoteca);


/*SELECT Lounge.idDiscoteca, SUM(Lounge.areaEspaco) AS totalAreaLounge, SUM(CaixaPagamento.areaEspaco) AS totalAreaCaixa, SUM(Bengaleiro.areaEspaco) AS totalAreaBengaleiro, 
SUM(Pista.areaEspaco) AS totalAreaPista 
FROM Lounge JOIN CaixaPagamento USING(idDiscoteca) JOIN Bengaleiro USING(idDiscoteca) JOIN Pista USING(idDiscoteca)*/