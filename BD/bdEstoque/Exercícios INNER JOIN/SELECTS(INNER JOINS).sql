USE bdEstoque
GO

--INNER JOINS

--a)
SELECT descricaoProduto,nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante 


--b)
SELECT descricaoProduto, nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor ON tbProduto.codFornecedor = tbFornecedor.codFornecedor


--c)
SELECT SUM(quantidadeProduto) 'Soma da quantidade dos produtos agrupados pelo nome do Fabricante', nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante 
		GROUP BY nomeFabricante 


--d) 
SELECT COUNT(valorTotalVenda) 'Total das vendas ao lado do nome do cliente', nomeCliente FROM tbVenda
	INNER JOIN tbCliente ON tbVenda.codCliente = tbCliente.codCliente
		GROUP BY nomeCliente


--e)
SELECT AVG(valorProduto) 'Média dos preços dos produtos agrupados pelo nome do fornecedor', nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
		GROUP BY nomeFornecedor


--f)
SELECT SUM(valorTotalVenda) 'Soma das vendas agrupadas pelo nome do cliente em ordem alfabética', nomeCliente FROM tbVenda
	INNER JOIN tbCliente ON tbVenda.codCliente = tbCliente.codCliente
		GROUP BY nomeCliente
			ORDER BY nomeCliente ASC


--g)
SELECT SUM(valorProduto) 'Soma dos preços dos produtos agrupados pelo nome do Fabricante', nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante 
		GROUP BY nomeFabricante 


--h)
--Mesmo que o e)


--i)
SELECT SUM(valorTotalVenda) 'Soma das vendas agrupadas pelo nome do produto', descricaoProduto FROM tbVenda
	INNER JOIN tbItensVenda ON tbVenda.codVenda = tbItensVenda.codVenda
		INNER JOIN tbProduto ON tbProduto.codProduto = tbItensVenda.codProduto
			GROUP BY descricaoProduto


--j)
SELECT SUM(valorTotalVenda) 'Soma das vendas pelo nome do cliente em fevereiro de 2014', nomeCliente FROM tbVenda
	INNER JOIN tbCliente ON tbVenda.codCliente = tbCliente.codCliente
		WHERE MONTH(dataVenda) = 2 AND YEAR(dataVenda) = 2014
				GROUP BY nomeCliente
