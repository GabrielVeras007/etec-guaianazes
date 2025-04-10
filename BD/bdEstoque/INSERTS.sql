USE bdEstoque

--INSERTS

SELECT * FROM tbFabricante

INSERT INTO tbFabricante (nomeFabricante)
VALUES 
('Unilever')
,('P&G')
,('Bunge')

SELECT * FROM tbFornecedor

INSERT INTO tbFornecedor (nomeFornecedor,contatoFornecedor)
VALUES 
('Atacadão','Carlos Santos')
,('Assaí','Maria Stella')
,('Roldão','Paulo César')

SELECT * FROM tbProduto

INSERT INTO tbProduto (descricaoProduto,valorProduto,quantidadeProduto,codFabricante,codFornecedor)
VALUES 
('Amaciante Downy','5.76','1500','2','1')
,('Amaciante Comfort','5.45','2300','1','1')
,('Sabão em pó OMO','5.99','1280','1','2')
,('Margarina Qually','4.76','2500','3','1')
,('Salsicha Hot Dog Sadia','6.78','2900','3','2')
,('Mortadela Perdigão','2.50','1200','3','3')
,('Hamburguer Sadia','9.89','1600','3','1')
,('Fralda Pampers','36.00','340','2','3')
,('Xampu Seda','5.89','800','1','2')
,('Condicionador Seda','6.50','700','1','3')

SELECT * FROM tbCliente

INSERT INTO tbCliente (nomeCliente, cpfCliente, emailCliente, sexoCliente, dataNascimentoCliente)
VALUES 
('Armando José Santana','12345678900','armandojsantana@outlook.com','m','21/02/1961')
,('Sheila Carvalho Leal','45678909823','scarvalho@ig.com.br','f','13/09/1978')
,('Carlos Henrique Souza','76598278299','chenrique@ig.com.br','m','08/09/1981')
,('Maria Aparecida Souza','87365309899','mapdasouza@outlook.com','f','07/07/1962')
,('Adriana Nogueira Silva','76354309388','drica1977@ig.com.br','f','09/04/1977')
,('Paulo Henrique Silva','87390123111','phsilva80@hotmail.com','m','02/02/1980')

SELECT * FROM tbVenda

INSERT INTO tbVenda (dataVenda,valorTotalVenda,codCliente)
VALUES 
('01/02/2014','4500.00','1')
,('03/02/2014','3400.00','1')
,('10/02/2014','2100.00','2')
,('15/02/2014','2700.00','3')
,('17/03/2014','560.00','3')
,('09/04/2014','1200.00','4')
,('07/05/2014','3500.00','5')
,('07/05/2014','3400.00','1')
,('05/05/2014','4000.00','2')
,('05/05/2014','4000.00','2')


SELECT * FROM tbItensVenda

INSERT INTO tbItensVenda (codVenda,codProduto,quantidadeItensVenda,subTotalItensVenda)
VALUES 
('1','1','200','1500.00')
,('1','2','300','3000.00')
,('2','4','120','1400.00')
,('2','2','200','2100.00')
,('2','3','130','1000.00')
,('3','5','200','2100.00')
,('4','4','120','1000.00')
,('4','5','450','700.00')
,('5','5','200','560.00')
,('6','7','200','600.00')
,('6','6','300','600.00')
,('8','1','300','2500.00')
,('8','2','200','1000.00')
,('9','6','250','1700.00')
,('9','5','200','1700.00')
,('10','4','1000','4000.00')

--UPDATES e DELETES

--1.

UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto/100) * 10
WHERE codFabricante = 3

--2.

UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto/100) * 7
WHERE codFabricante = 2

--3.

UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - 30
WHERE codFornecedor =1

--4.

UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE codCliente = 5

--5.

UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda - (valorTotalVenda/100) * 5
WHERE DATEPART(MONTH, dataVenda) = 02

--6.

DELETE tbItensVenda
WHERE codProduto = 5

--7.

UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto/100) * 20
WHERE quantidadeProduto > 1000

--8.

UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda - (valorTotalVenda/100) * 10
WHERE codCliente = 2 OR codCliente = 3 OR codCliente = 4

--9.

UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto/100) * 6
WHERE descricaoProduto LIKE '%Sadia%'

--10.

UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda + (valorTotalVenda/100) * 2
WHERE DATEPART(MONTH, dataVenda) = 02


--Consultas


--A.

SELECT	SUM(quantidadeProduto) as'Soma da quantidade de produtos no estoque da P&G' FROM tbProduto
WHERE codFabricante = 2

--B.

SELECT AVG(valorProduto) as'Preço médio dos produtos da P&G' FROM tbProduto
WHERE codFabricante = 2

--C.

SELECT SUM(valorProduto) as 'Soma do preço dos produtos da Unilever' FROM tbProduto
WHERE codFabricante = 1

--D.

SELECT AVG(valorProduto) as 'Preço médio dos produtos da Bungue' FROM tbProduto
WHERE codFabricante = 3

--E.

SELECT SUM(quantidadeProduto) as 'Soma da quantidade de produtos no estoque da Bungue' FROM tbProduto
WHERE codFabricante = 3

--F.

SELECT AVG(valorProduto) as'Preço médio dos produtos da Unilever' FROM tbProduto
WHERE codFabricante = 1

--G.

SELECT SUM(quantidadeProduto) as 'Quantidade média de produtos no estoque da P&G' FROM tbProduto
WHERE codFabricante = 2

--H.

SELECT AVG(valorProduto) as 'Preço médio dos produtos no Estoque que a qtde é menor que 200' FROM tbProduto
WHERE quantidadeProduto < 200

--I.

SELECT AVG(quantidadeProduto) as 'Quantiade média de produtos no estoque da Unilever' FROM tbProduto
WHERE codFabricante = 1

--J.

SELECT SUM(valorTotalVenda) as 'Soma das vendas entre fevereiro e março 2014' FROM tbVenda
WHERE DATEPART(MONTH, dataVenda) = 2 OR DATEPART(MONTH, dataVenda) = 3

--K.

SELECT SUM(quantidadeProduto) as 'Quantiade do produto amaciante no estoque' FROM tbProduto
WHERE descricaoProduto LIKE '%Amaciante%'

--L.

SELECT MAX(valorProduto) as 'Valor do produto mais caro' FROM tbProduto

--M.

SELECT MIN(valorProduto) as 'Valor do produto mais barato' FROM tbProduto

--N.

SELECT AVG(valorProduto) as 'Média dos Amaciantes' FROM tbProduto
WHERE descricaoProduto LIKE '%Amaciante%'

--O.

SELECT COUNT(DISTINCT codProduto) as 'Itens diferentes no estoque' FROM tbProduto

--P.

SELECT COUNT(codProduto) as 'Quantiade de itens no estoque da Unilever' FROM tbProduto
WHERE codFabricante = 1

--Q.

SELECT COUNT(codProduto) as 'Quantiade de itens no estoque tirando os da Unilever' FROM tbProduto
WHERE codFabricante != 1

--R.

SELECT SUM(quantidadeProduto) as 'Soma da quantidade de produtos no estoque que tem mais de 800 unidades' FROM tbProduto
WHERE quantidadeProduto > 800

--S.

SELECT AVG(valorProduto) as 'Preço médio dos produtos no Estoque da Unilever e que tem mais de 1000 unidades' FROM tbProduto
WHERE codFabricante = 1 AND quantidadeProduto > 1000

--T.

SELECT AVG(valorTotalVenda) as 'Média das vendas de 2014' FROM tbVenda
WHERE DATEPART(YEAR, dataVenda) = 2014
