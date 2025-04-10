------------------------Exercício 1-----------------------------------------
CREATE DATABASE bdVeiculo
GO
USE bdVeiculo

CREATE TABLE tbMotorista (
	codMotorista INT PRIMARY KEY IDENTITY (1,1)
	,nomeMotorista VARCHAR (70)
	,dataNascimentoMotorista DATE
	,cpfMotorista VARCHAR (20)
	,CNHMotorista VARCHAR (20)
	,pontuacaoAcumulada VARCHAR (20)
)

CREATE TABLE tbVeiculo (
	codVeiculo INT PRIMARY KEY IDENTITY (1, 1)
	,modeloVeiculo VARCHAR (20)
	,placa VARCHAR (10)
	,renavam VARCHAR (20)
	,anoVeiculo VARCHAR (4)
	,codMotorista INT FOREIGN KEY REFERENCES tbMotorista (codMotorista)
)

CREATE TABLE tbMultas (
	codMulta INT PRIMARY KEY IDENTITY (1, 1)
	,dataMulta DATE
	,horaMulta TIME
	,pontosMulta VARCHAR (20)
	,codVeiculo INT FOREIGN KEY REFERENCES tbVeiculo (codVeiculo)
)

------------------------Exercício 2-----------------------------------------

CREATE DATABASE bdConta
GO
USE bdConta


CREATE TABLE tbCliente (
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (70)
	,cpfCliente VARCHAR (20)
)



CREATE TABLE tbDeposito (
	codDeposito INT PRIMARY KEY IDENTITY (1,1)
	,valorDeposito SMALLMONEY
	,numConta INT FOREIGN KEY REFERENCES tbContaCorrente (numConta)
	,dataDeposito DATE
	,horaDeposito TIME
)

CREATE TABLE tbSaque (
	codSaque INT PRIMARY KEY IDENTITY (1,1)
	,valorSaque SMALLMONEY
	,numConta INT FOREIGN KEY REFERENCES tbContaCorrente (numConta)
	,dataSaque DATE
	,horaSaque TIME
)

CREATE TABLE tbContaCorrente (
	numConta INT PRIMARY KEY IDENTITY (1,1)
	,saldoConta SMALLMONEY
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
)