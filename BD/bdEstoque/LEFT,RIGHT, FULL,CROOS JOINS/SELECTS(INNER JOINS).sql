USE bdEstoque
GO

-- JOINS

-- 1. 
INSERT INTO tbFornecedor (nomeFornecedor,contatoFornecedor)
VALUES 
	('Rossi','Cristino Ronaldo'),
	('Sonda','Lionel Messi'),
	('Tenda','Neymar Junior')

--2.
SELECT nomeFornecedor,descricaoProduto FROM tbFornecedor
	INNER JOIN tbProduto ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

--3.
SELECT nomeFornecedor,descricaoProduto FROM tbFornecedor
	LEFT JOIN tbProduto ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

SELECT nomeFornecedor,descricaoProduto FROM tbFornecedor
	RIGHT JOIN tbProduto ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

--4.
INSERT INTO tbProduto (descricaoProduto,valorProduto,quantidadeProduto,codFabricante,codFornecedor)
VALUES 
('Pão','0.25','1800','2',' '),
('Mussarela(kg)','57,90','3',''),
('Danoninho','12.00','1',' ')


--5.
SELECT nomeFornecedor,descricaoProduto FROM tbFornecedor
	FULL JOIN tbProduto ON tbProduto.codFornecedor = tbFornecedor.codFornecedor


--6.
SELECT nomeFornecedor,descricaoProduto FROM tbFornecedor
	CROSS JOIN tbProduto 