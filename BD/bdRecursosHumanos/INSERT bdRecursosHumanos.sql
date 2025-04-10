USE bdRecursosHumanos
GO

INSERT INTO tbDepartamento (nomeDepartamento)
VALUES ('Compras')
		,('Vendas')
		,('TI')
		,('Marketing')

SELECT * FROM tbDepartamento 

INSERT INTO tbFuncionario(nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, codDepartamento)
VALUES ('Maria Luisa Moura', '12345678900', 'F', '10/02/1990', '3400.00', '1')
		,('Mariana Goulart', '45678909299', 'F', '08/04/1991', '2800.00', '1')
		,('Pedro Paulo Vidigal', '64587222388', 'M', '07/05/1994', '5400.00', '2')
		,('Carlos Calixto', '83738232233', 'M', '03/03/1965', '8900.00', '2')
		,('Viviane Martins', '77832233399', 'F', '06/06/1976', '4300.00', '3')
		,('Analice Mendes', '83703383493', 'F', '09/09/1981', '6800.00', '3')
		,('Patricia Ishikawa', '43356609300', 'F', '05/05/1978', '4900.00', '4')
		
SELECT * FROM tbFuncionario

INSERT INTO tbDependente(nomeDependente, dataNascimentoDependente, sexoDependente, codFuncionario)
VALUES ('Lucas Moura', '10/01/2015', 'M', '1')
		,('Carlos Calixto Jr', '08/06/2000', 'M', '4')
		,('Michele Costa Calixto', '09/09/2003', 'F', '4')
		,('Silvana Costa Calixto', '04/04/2006', 'F', '4')
		,('Arthur Mendes Silva', '07/07/2010', 'M', '6')

SELECT * FROM tbDependente