-- Nome e salário dos 5 funcionários mais bem pagos do Staff Geral que trabalham nas Caixas de Pagamento, ordenados por ordem decrescente.

.mode	columns
.headers	on
.nullvalue	NULL

SELECT nome, salario
FROM StaffGeral NATURAL JOIN Funcionario
    JOIN CaixaStaffGeral 
WHERE CaixaStaffGeral.idStaff = StaffGeral.id
ORDER BY salario DESC LIMIT 5;