CREATE DATABASE bdTransito
GO
USE bdTransito


CREATE TABLE tbMotorista (
		idMotorista INT PRIMARY KEY IDENTITY (1,1)
		,nomeMotorista VARCHAR (100) NOT NULL
		,dataNascimentoMotorista DATE NOT NULL
		,cpfMotorista VARCHAR (20) NOT NULL
		,CNHMotorista VARCHAR (20) NOT NULL
		,pontuacaoAcumulada INT NOT NULL
)

CREATE TABLE tbVeiculo (
		idVeiculo INT PRIMARY KEY IDENTITY (1,1)
		,modeloVeiculo VARCHAR (50) NOT NULL
		,placaVeiculo VARCHAR (30) NOT NULL
		,renavamVeiculo VARCHAR(20) NOT NULL
		,anoVeiculo INT NOT NULL
		,idMotorista INT FOREIGN KEY REFERENCES tbMotorista(idMotorista) 
)


CREATE TABLE tbMultas (
		idMulta INT PRIMARY KEY IDENTITY (1,1)
		,dataMulta DATE NOT NULL
		,horaMulta TIME NOT NULL
		,pontosMulta INT NOT NULL
		,idVeiculo INT FOREIGN KEY REFERENCES tbVeiculo(idVeiculo) 
)
