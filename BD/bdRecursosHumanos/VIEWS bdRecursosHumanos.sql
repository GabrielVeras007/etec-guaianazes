USE bdRecursosHumanos
GO

-- A)Criar uma view para exibir a quantidade de funcionários por nome de departamento
CREATE VIEW vwFunc_Departamento AS
	SELECT nomeDepartamento, COUNT(codFuncionario) 'Quantidade Funcionarios'FROM tbFuncionario
		INNER JOIN tbDepartamento ON tbFuncionario.codDepartamento = tbDepartamento.codDepartamento
			GROUP BY tbDepartamento.nomeDepartamento

SELECT * FROM vwFunc_Departamento


--B)Usando a view anterior, exibir somente o nome do departamento que possui o menor número de funcionários
SELECT * FROM vwFunc_Departamento
WHERE [Quantidade Funcionarios] = (SELECT MIN([Quantidade Funcionarios]) FROM vwFunc_Departamento)


--C) Criar uma view para exibir a soma dos salários por nome de departamento
CREATE VIEW vwSalario_Departamento AS
	SELECT nomeDepartamento, SUM(salarioFuncionario)'Soma dos Salarios' FROM tbFuncionario
		INNER JOIN tbDepartamento ON tbFuncionario.codDepartamento = tbDepartamento.codDepartamento
			GROUP BY tbDepartamento.nomeDepartamento

SELECT * FROM vwSalario_Departamento


-- D)Utilizando a view do exercício anterior, mostrar somente a maior soma dentre os departamentos
SELECT * FROM vwSalario_Departamento
WHERE [Soma dos Salarios] = (SELECT MAX([Soma dos Salarios]) FROM vwSalario_Departamento)


--E)Criar uma view para exibir somente o nome dos funcionários e o nome dos departamentos daqueles funcionários que não possuem dependentes
CREATE VIEW vwFunc_Sem_Departamento AS
SELECT nomeFuncionario, nomeDepartamento FROM tbFuncionario
		INNER JOIN tbDepartamento ON tbFuncionario.codDepartamento = tbDepartamento.codDepartamento
			WHERE tbFuncionario.codFuncionario NOT IN (SELECT codFuncionario FROM tbDependente)

SELECT * FROM vwFunc_Sem_Departamento


-- F)Criar uma view que exiba a quantidade de dependentes por nome de funcionário 
CREATE VIEW vwQuant_Dependentes_Func AS
	SELECT nomeFuncionario, COUNT(codDependente)'Quantidade Dependentes' FROM tbFuncionario
		LEFT JOIN tbDependente ON tbFuncionario.codFuncionario = tbDependente.codFuncionario
			GROUP BY tbFuncionario.nomeFuncionario

SELECT * FROM vwQuant_Dependentes_Func


--G)Utilizando a view anterior, mostrar somente o nome do funcionário que possui mais dependentes
SELECT * FROM vwQuant_Dependentes_Func
WHERE [Quantidade Dependentes] = (SELECT MAX([Quantidade Dependentes]) FROM vwQuant_Dependentes_Func)


--H)Criar uma view para exibir a quantidade de dependentes por departamento
CREATE VIEW vwQuant_Dependentes_Departamento AS
	SELECT nomeDepartamento, COUNT(nomeDependente)'Quantidade Dependente' FROM tbFuncionario
		INNER JOIN tbDepartamento ON tbFuncionario.codDepartamento = tbDepartamento.codDepartamento
			INNER JOIN tbDependente ON tbFuncionario.codFuncionario = tbDependente.codFuncionario
				GROUP BY tbDepartamento.nomeDepartamento

SELECT * FROM vwQuant_Dependentes_Departamento

--I)Utilizando a view do exercícios anterior, apresentar a soma geral dos dependentes
SELECT COUNT(nomeDependente)'Soma Geral dos Dependentes' FROM tbDependente