USE BdLivrariaBrasileira
GO 

--UPDATES e DELETES

--a)
SELECT COUNT(codLivro) as 'Total de livros que começam com a letra P' FROM tbLivro
WHERE nomeLivro LIKE 'P%'

--b)
SELECT MAX(numPaginas) as 'Maior número de páginas de todos os livros' FROM tbLivro

--c)
SELECT MIN(numPaginas) as 'Menor número de páginas de todos os livros' FROM tbLivro

--d)
SELECT AVG(numPaginas) as 'Média do número de páginas de todos os livros' FROM tbLivro

--e)
SELECT SUM(numPaginas) as 'Soma do número de páginas dos livros da editora 1' FROM tbLivro
WHERE codEditora = 1

--f)

SELECT SUM(numPaginas) as 'Soma do número de páginas dos livros que começam com a letra A' FROM tbLivro
WHERE nomeLivro LIKE 'A%'

--g)
SELECT AVG(numPaginas) as 'Média do número de páginas dos livros do autor 3' FROM tbLivro
WHERE codAutor = 3

--h)
SELECT COUNT(codLivro) as 'Total de livros da editora 4' FROM tbLivro
WHERE codEditora = 4

--i)
SELECT AVG(numPaginas) as 'Média do número de páginas dos livros com a palavra estrela' FROM tbLivro
WHERE nomeLivro LIKE '%estrela%'

--j)
SELECT COUNT(codLivro) as 'Total de livros com a palavra poema' FROM tbLivro
WHERE nomeLivro LIKE '%poema%'

--k)
SELECT codGenero COUNT(codLivro) as 'Total de livros agrupados pelos seu gênero' FROM tbLivro
GROUP BY codGenero