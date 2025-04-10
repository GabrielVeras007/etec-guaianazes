CREATE DATABASE bdLivrariaBrasileira
GO

--CREATE 

USE bdLivrariaBrasileira

CREATE TABLE tbAutor (
	codAutor INT PRIMARY KEY IDENTITY (1,1)
	,nomeAutor VARCHAR (70) NOT NULL
)

CREATE TABLE tbGenero (
	codGenero INT PRIMARY KEY IDENTITY (1,1)
	,nomeGenero VARCHAR (70) NOT NULL
)

CREATE TABLE tbEditora (
	codEditora INT PRIMARY KEY IDENTITY (1,1)
	,nomeEditora VARCHAR (70) NOT NULL
)

CREATE TABLE tbLivro (
	codLivro INT PRIMARY KEY IDENTITY (1,1)
	,nomeLivro VARCHAR (70) NOT NULL
	,numPaginas INT NOT NULL
	,codAutor INT FOREIGN KEY REFERENCES tbAutor(codAutor) 
	,codGenero INT FOREIGN KEY REFERENCES tbGenero(codGenero)
	,codEditora INT FOREIGN KEY REFERENCES tbEditora(codEditora)
)