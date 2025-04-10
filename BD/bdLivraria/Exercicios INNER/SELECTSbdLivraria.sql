USE BdLivrariaBrasileira
GO 

--UPDATES e DELETES

--a)A quantidade de livros agrupado pelo nome do gênero;
SELECT COUNT(nomeLivro) 'Quantidade de livros', nomeGenero FROM tbLivro
	INNER JOIN tbGenero ON tbLivro.codGenero = tbGenero.codGenero
		GROUP BY nomeGenero

--b)A soma das páginas agrupada pelo nome do autor;
SELECT SUM(numPaginas) 'Soma das Páginas', nomeAutor FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		GROUP BY nomeAutor

--c)A média de páginas agrupada pelo nome do autor em ordem alfabética (de A a Z);
SELECT AVG(numPaginas) 'Média das páginas', nomeAutor FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		GROUP BY nomeAutor	
			ORDER BY nomeAutor ASC

--d)A quantidade de livros agrupada pelo nome da editora em ordem alfabética inversa (de Z a A);
SELECT COUNT(numPaginas) 'Quantidade das páginas', nomeEditora FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		GROUP BY nomeEditora
			ORDER BY nomeEditora DESC

--e)A soma de páginas dos livros agrupados pelo nome do autor que sejam de autores cujo nome comece com a letra “C”;
SELECT SUM(numPaginas) 'Soma das páginas', nomeAutor FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor LIKE 'C%'
			GROUP BY nomeAutor

--f)A quantidade  de  livros  agrupados  pelo  nome  do  autor,  cujo  nome  do  autor  seja “Machado de Assis” ou “Cora Coralina”ou “Graciliano Ramos” ou “Clarice Lispector”;
SELECT COUNT(nomeLivro) 'Quantidade dos livros', nomeAutor FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor LIKE 'Machado de Assis' OR nomeAutor LIKE 'Cora Coralina' OR nomeAutor LIKE 'Graciliano Ramos' OR nomeAutor LIKE 'Clarice Lispector'
			GROUP BY nomeAutor

--g)A soma das páginas dos livros agrupadas pelo nome da editora cujo número de páginas esteja entre 200 e 500 (inclusive);
SELECT SUM(numPaginas) 'Soma das Paginas', nomeEditora FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		WHERE numPaginas >= 200 AND numPaginas <= 500
			GROUP BY nomeEditora

--h)O nome dos livros ao lado do nome das editoras e do nome dos autores;
SELECT nomeLivro, nomeEditora, nomeAutor FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--i)O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for “Cia das Letras”;
SELECT nomeLivro, nomeAutor, nomeEditora FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
			WHERE nomeEditora LIKE 'Companhia das Letras'

--j) nome dos livros ao lado dos nomes dos autores, somente dos livros que não forem do autor “Érico Veríssimo”;
SELECT nomeLivro, nomeAutor FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
			WHERE nomeAutor <> 'Érico Veríssimo'

--k)Os nomes  dos  autores  ao  lado  dos  nomes dos  livros,  inclusive  daqueles  que  não  tem livros cadastrados;
SELECT nomeLivro, nomeAutor FROM tbLivro
	RIGHT JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		RIGHT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--l)Os nomes  dos  autores  ao  lado  dos  nomes dos  livros,  inclusive  daqueles  que  não tem autores cadastrados;
SELECT nomeLivro, nomeAutor FROM tbLivro
	LEFT JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		LEFT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--m)O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou não livro publicado, e indiferente do livro pertencer a algum autor;
SELECT nomeLivro, nomeAutor FROM tbLivro
	FULL JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		FULL JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--n)A editora Ática irá publicar todos os títulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora Ática;
SELECT nomeLivro, nomeEditora FROM tbLivro
	CROSS JOIN tbEditora
		WHERE nomeEditora = 'Ática'

--o)Somente os nomes dos autores que não tem livros cadastrados;
SELECT nomeLivro, nomeAutor FROM tbLivro
	RIGHT JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		RIGHT JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
			WHERE nomeLivro IS NULL

--p)Os nomes dos gêneros que não possuem nenhum livro cadastrado;
SELECT nomeLivro, nomeGenero FROM tbLivro
	RIGHT JOIN tbGenero ON tbLivro.codGenero = tbGenero.codGenero
		WHERE nomeLivro IS NULL