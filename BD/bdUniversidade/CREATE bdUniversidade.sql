CREATE DATABASE bdUniversidade 
USE bdUniversidade
--DROP DATABASE bdUniversidade

CREATE TABLE tbCampus (
	idCampus INT PRIMARY KEY IDENTITY (1,1)
	,nomeCampus VARCHAR (60) NOT NULL
	,logradouroCampus VARCHAR (10) NOT NULL
	,numerologradouroCampus VARCHAR (5) NOT NULL
	,bairroCampus VARCHAR (15) NOT NULL
	,cepCampus CHAR (8) NOT NULL
	,cidadeCampus VARCHAR (15) NOT NULL
	,ufCampus CHAR (2) NOT NULL
	,paisCampus VARCHAR (15) NOT NULL
)

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,idCampus INT FOREIGN KEY REFERENCES tbCampus(idCampus)
	,nomeCurso VARCHAR (50) NOT NULL
)

CREATE TABLE tbDisciplina (
	idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,nomeDisciplina VARCHAR (40) NOT NULL
)

CREATE TABLE tbCursoDisciplina (
	idCursoDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina)
)

CREATE TABLE tbProfessor (
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor VARCHAR (60) NOT NULL
	,rgProfessor VARCHAR (14) NOT NULL
	,cpfProfessor VARCHAR (14) NOT NULL
)

CREATE TABLE tbProfessorDisciplina (
	idProfessorDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina)
)


CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,nomeAluno VARCHAR (60) NOT NULL
	,rgAluno VARCHAR (14) NOT NULL
	,cpfAluno VARCHAR (14) NOT NULL
)

CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,anoFormacao SMALLDATETIME
	,numeroSala VARCHAR (2) NOT NULL
)

CREATE TABLE tbAlunoTurma (
	idAlunoTurma INT PRIMARY KEY IDENTITY (1,1)
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)
