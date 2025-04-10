CREATE DATABASE bdEstoque

GO

USE bdEstoque

CREATE TABLE tbFabricante (
	codFabricante INT PRIMARY KEY IDENTITY (1,1)
	,nomeFabricante VARCHAR (70) NOT NULL
)

CREATE TABLE tbFornecedor (
	codFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR (100) NOT NULL
	,contatoFornecedor VARCHAR (20) NOT NULL
)

CREATE TABLE tbProduto (
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,descricaoProduto VARCHAR (100) NOT NULL
	,valorProduto MONEY NOT NULL
	,quantidadeProduto INT  NOT NULL
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor(codFornecedor)
)

CREATE TABLE tbCliente (
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (70) NOT NULL
	,cpfCliente VARCHAR (15) NOT NULL
	,emailCliente VARCHAR (100) NOT NULL
	,sexoCliente VARCHAR (10) NOT NULL
	,dataNascimentoCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbVenda (
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda DATE NOT NULL
	,valorTotalVenda MONEY NOT NULL
	,codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente) 
)

CREATE TABLE tbItensVenda (
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
	,quantidadeItensVenda INT NOT NULL
	,subTotalItensVenda MONEY NOT NULL
)
