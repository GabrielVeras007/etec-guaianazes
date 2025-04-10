USE bdEstoque

--Subqueries


--1.
SELECT codProduto, descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
		WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto)

--2.
SELECT descricaoProduto, nomeFabricante FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
		WHERE valorProduto > (SELECT AVG(valorProduto) FROM tbProduto)

--3.
SELECT nomeCliente, valorTotalVenda FROM tbCliente
	INNER JOIN tbVenda ON tbCliente.codCliente = tbVenda.codCliente
		WHERE valorTotalVenda > (SELECT AVG(valorTotalVenda) FROM tbVenda)

--4.
SELECT descricaoProduto, valorProduto FROM tbProduto
	WHERE valorProduto = (SELECT MAX(valorProduto) FROM tbProduto)

--5.
SELECT descricaoProduto, valorProduto FROM tbProduto
	WHERE valorProduto = (SELECT MIN(valorProduto) FROM tbProduto)