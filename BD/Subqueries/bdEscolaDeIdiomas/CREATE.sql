CREATE DATABASE bdEscolaDeIdiomas
USE bdEscolaDeIdiomas
GO

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	, nomeAluno VARCHAR (70) not null
	, rgAluno VARCHAR (12) not null
	, cpfAluno VARCHAR (15) not null
	, logradouro VARCHAR (70) not null
	, numero VARCHAR (20) not null
	, complemento VARCHAR (50)
	, cep VARCHAR (9) not null
	, bairro VARCHAR (50) not null
	, cidade VARCHAR (50) not null
	, dataNascAluno SMALLDATETIME not null
)

CREATE TABLE tbTelefoneAluno(
	codTelAlu INT PRIMARY KEY IDENTITY (1,1)
	, numTelAlu VARCHAR (12) not null
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
)

CREATE TABLE tbCurso(
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR (50) not null
	, valorCurso SMALLMONEY not null
)

CREATE TABLE tbNivel(
	codNivel INT PRIMARY KEY IDENTITY (1,1)
	, descNivel VARCHAR (50)
)

CREATE TABLE tbPeriodo(
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	, descPeriodo VARCHAR (50) not null
)

CREATE TABLE tbTurma(
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	, descTurma VARCHAR (50) not null
	, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso)
	, codNivel INT FOREIGN KEY REFERENCES tbNivel(codNivel)
	, codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo(codPeriodo)
	, horario SMALLDATETIME not null
	, diaSemana VARCHAR (15) not null
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	, dataMatricula SMALLDATETIME not null
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
	, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma)
)