CREATE DATABASE bdRecursosHumanos
USE bdRecursosHumanos
GO

CREATE TABLE tbDepartamento (
	codDepartamento INT PRIMARY KEY IDENTITY(1, 1)
	,nomeDepartamento VARCHAR(30) NOT NULL
)

CREATE TABLE tbFuncionario (
	codFuncionario INT PRIMARY KEY IDENTITY(1, 1)
	,nomeFuncionario VARCHAR(100) NOT NULL
	,cpfFuncionario VARCHAR(20) NOT NULL
	,sexoFuncionario VARCHAR(10) NOT NULL
	,dataNascimentoFuncionario DATE NOT NULL
	,salarioFuncionario MONEY NOT NULL
	,codDepartamento INT FOREIGN KEY REFERENCES tbDepartamento(codDepartamento) NOT NULL
)

CREATE TABLE tbDependente (
	codDependente INT PRIMARY KEY IDENTITY(1, 1)
	,nomeDependente VARCHAR(30) NOT NULL
	,dataNascimentoDependente DATE NOT NULL
	,sexoDependente VARCHAR(10) NOT NULL
	,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario) NOT NULL
)