CREATE DATABASE bdEscola
USE bdEscola
--DROP DATABASE bdEscola

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50)
	,dataNascimentoAluno DATETIME
	,rgAluno VARCHAR (14)
	,naturalidadeAluno VARCHAR(20)
	,cpfAluno VARCHAR(20)
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (20)
	,cargaHorariaCurso VARCHAR (6)
	,valorCurso MONEY
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	,nomeTurma VARCHAR (5)
	,codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	,horarioTurma DATETIME
)

CREATE TABLE tbMatricula (
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula DATETIME
	,codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	,codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)
