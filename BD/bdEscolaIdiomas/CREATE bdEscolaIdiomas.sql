CREATE DATABASE bdEscolaIdiomas
GO
USE bdEscolaIdiomas

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50) NOT NULL
	,dataNascimentoAluno DATETIME NOT NULL
	,rgAluno VARCHAR (14) NOT NULL
	,naturalidadeAluno VARCHAR(20) NOT NULL
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (20) NOT NULL
	,cargaHorariaCurso VARCHAR (6) NOT NULL
	,valorCurso MONEY NOT NULL
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma VARCHAR (5) NOT NULL
	,codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso) NOT NULL
	,horarioTurma DATETIME NOT NULL
)

CREATE TABLE tbMatricula (
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula DATETIME NOT NULL
	,codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno) NOT NULL
	,codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma) NOT NULL
)
