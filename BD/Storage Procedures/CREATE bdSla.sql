CREATE DATABASE bdConfeitaria
GO
USE bdConfeitaria

CREATE TABLE tbCategoriaProduto (
	codCategoriaProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeCategoriaProduto VARCHAR (30)
)

CREATE TABLE tbProduto (
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeProduto VARCHAR (30)
	,precoKiloProduto MONEY
	,codCategoriaProduto INT FOREIGN KEY REFERENCES tbCategoriaProduto (codCategoriaProduto)
)

CREATE TABLE tbCliente (
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (70)
	,dataNascimentoCliente DATE
	,ruaCliente VARCHAR (40)
	,numCasaCliente INT 
	,cepCliente VARCHAR (20)
	,bairroCliente VARCHAR (40)
	,cidadeCliente VARCHAR (40)
	,estadoCliente VARCHAR (40)
	,cpfCliente VARCHAR (20)
	,sexoCliente VARCHAR (9)
)

CREATE TABLE tbEncomenda (
	codEncomenda INT PRIMARY KEY IDENTITY (1,1)
	,dataEncomenda DATE
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
	,valorTotalEncomenda MONEY
	,dataEntregaEncomenda DATE
)

CREATE TABLE tbItensEncomenda (
	codItensEncomenda INT PRIMARY KEY IDENTITY (1,1)
	,codEncomenda INT FOREIGN KEY REFERENCES tbEncomenda (codEncomenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	,quantidadeKilos INT 
	,subTotal MONEY
)