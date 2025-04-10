USE bdTransito
GO

--a) Quantos motoristas existem no banco de dados
SELECT COUNT(idMotorista) AS qtdMotoristas FROM tbMotorista

--b) Quantos motoristas possuem "Silva" no sobrenome
SELECT COUNT(idMotorista) AS qtdMotoristasComSilva FROM tbMotorista 
	WHERE nomeMotorista LIKE '%Silva%'

--c) Quantos motoristas nasceram no ano 2000
SELECT COUNT(idMotorista) AS qtdMotoristasAno2000 FROM tbMotorista 
	WHERE YEAR(dataNascimentoMotorista) = 2000

--d) Quantos motoristas possuem mais de 10 pontos de pontua��o acumulada
SELECT COUNT(idMotorista) AS qtdMotoristasComMaisDe10Pontos FROM tbMotorista 
	WHERE pontuacaoAcumulada > 10

--e) A somat�ria da pontua��o de todos os motoristas
SELECT SUM(pontuacaoAcumulada) AS somaPontuacao FROM tbMotorista

--f) A m�dia de pontua��o de todos os motoristas
SELECT AVG(pontuacaoAcumulada) AS mediaPontuacao FROM tbMotorista

--g) Quantos ve�culos o motorista de c�digo 1 possui
SELECT COUNT(idVeiculo) AS qtdVeiculosMotorista1 FROM tbVeiculo 
	WHERE idMotorista = 1

--h) Quantos ve�culos a placa come�a com A
SELECT COUNT(idVeiculo) AS qtdVeiculosPlacaA FROM tbVeiculo 
	WHERE placaVeiculo LIKE 'A%'

--i) Quantos ve�culos foram fabricados antes de 2010
SELECT COUNT(idVeiculo) AS qtdVeiculosAntes2010 FROM tbVeiculo 
	WHERE anoVeiculo < 2010

--j) A m�dia do ano de fabrica��o de todos os ve�culos
SELECT AVG(anoVeiculo) AS mediaAnoFabricacao FROM tbVeiculo

--k) A quantidade dos ve�culos que tenham a palavra "Sedan" em seu modelo
SELECT COUNT(idVeiculo) AS qtdVeiculosSedan FROM tbVeiculo 
	WHERE modeloVeiculo LIKE '%Sedan%'

--l) A somat�ria dos pontosMulta do ve�culo de id 02
SELECT SUM(pontosMulta) AS somaPontosMultaVeiculo02 FROM tbMultas 
	WHERE idVeiculo = 2

--m) A m�dia de pontosMulta entre todas as multas aplicadas
SELECT AVG(pontosMulta) AS mediaPontosMulta FROM tbMultas

--n) A quantidade de multas aplicadas no m�s de abril de 2018
SELECT COUNT(idMulta) AS qtdMultasAbril2018 FROM tbMultas 
	WHERE YEAR(dataMulta) = 2018 AND MONTH(dataMulta) = 4

--o) A quantidade de ve�culos cuja placa termine com o n�mero 1 ou 2
SELECT COUNT(idVeiculo) AS qtdVeiculosPlacaFinal12 FROM tbVeiculo 
	WHERE placaVeiculo LIKE '%1' OR placaVeiculo LIKE '%2'

--p) A quantidade de ve�culos cuja placa termine com o n�mero 3 ou 4
SELECT COUNT(idVeiculo) AS qtdVeiculosPlacaFinal34 FROM tbVeiculo 
	WHERE placaVeiculo LIKE '%3' OR placaVeiculo LIKE '%4'

--q) A quantidade de ve�culos cuja placa termine com o n�mero 5 ou 6
SELECT COUNT(idVeiculo) AS qtdVeiculosPlacaFinal56 FROM tbVeiculo 
	WHERE placaVeiculo LIKE '%5' OR placaVeiculo LIKE '%6'

--r) A quantidade de ve�culos cuja placa termine com 7 ou 8
SELECT COUNT(idVeiculo) AS qtdVeiculosPlacaFinal78 FROM tbVeiculo 
	WHERE placaVeiculo LIKE '%7' OR placaVeiculo LIKE '%8'

--s) A quantidade de ve�culos cuja placa termine com 9 ou 0
SELECT COUNT(idVeiculo) AS qtdVeiculosPlacaFinal90 FROM tbVeiculo 
	WHERE placaVeiculo LIKE '%9' OR placaVeiculo LIKE '%0'

--t) A quantidade de ve�culos por ano de fabrica��o
SELECT anoVeiculo, COUNT(idVeiculo) AS qtdVeiculosPorAno FROM tbVeiculo 
	GROUP BY anoVeiculo

--u) A quantidade de motoristas por pontua��o acumulada
SELECT pontuacaoAcumulada, COUNT(idMotorista) AS qtdMotoristasPorPontuacao FROM tbMotorista 
	GROUP BY pontuacaoAcumulada

--v) A quantidade de motoristas que ultrapassaram os 20 pontos
SELECT COUNT(idMotorista) AS qtdMotoristasComMaisDe20Pontos FROM tbMotorista 
	WHERE pontuacaoAcumulada > 20

--w) A pontua��o m�dia dos motoristas nascidos no ano de 2000
SELECT AVG(pontuacaoAcumulada) AS mediaPontuacaoAno2000 FROM tbMotorista 
	WHERE YEAR(dataNascimentoMotorista) = 2000

--x) A m�dia dos pontos das multas aplicadas em julho de 2017
SELECT AVG(pontosMulta) AS mediaPontosMultaJulho2017 FROM tbMultas 
	WHERE YEAR(dataMulta) = 2017 AND MONTH(dataMulta) = 7

--y) Quantos ve�culos n�o podem circular na segunda-feira (placa final 1 ou 2)
SELECT COUNT(idVeiculo) AS qtdVeiculosNaoCirculaSegunda FROM tbVeiculo 
	WHERE placaVeiculo LIKE '%1' OR placaVeiculo LIKE '%2'

