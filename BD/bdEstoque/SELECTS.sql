USE bdEstoque

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
