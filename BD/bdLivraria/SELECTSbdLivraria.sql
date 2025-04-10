USE BdLivrariaBrasileira
GO 

--UPDATES e DELETES

--a)
SELECT COUNT(codLivro) as 'Total de livros que come�am com a letra P' FROM tbLivro
WHERE nomeLivro LIKE 'P%'

--b)
SELECT MAX(numPaginas) as 'Maior n�mero de p�ginas de todos os livros' FROM tbLivro

--c)
SELECT MIN(numPaginas) as 'Menor n�mero de p�ginas de todos os livros' FROM tbLivro

--d)
SELECT AVG(numPaginas) as 'M�dia do n�mero de p�ginas de todos os livros' FROM tbLivro

--e)
SELECT SUM(numPaginas) as 'Soma do n�mero de p�ginas dos livros da editora 1' FROM tbLivro
WHERE codEditora = 1

--f)

SELECT SUM(numPaginas) as 'Soma do n�mero de p�ginas dos livros que come�am com a letra A' FROM tbLivro
WHERE nomeLivro LIKE 'A%'

--g)
SELECT AVG(numPaginas) as 'M�dia do n�mero de p�ginas dos livros do autor 3' FROM tbLivro
WHERE codAutor = 3

--h)
SELECT COUNT(codLivro) as 'Total de livros da editora 4' FROM tbLivro
WHERE codEditora = 4

--i)
SELECT AVG(numPaginas) as 'M�dia do n�mero de p�ginas dos livros com a palavra estrela' FROM tbLivro
WHERE nomeLivro LIKE '%estrela%'

--j)
SELECT COUNT(codLivro) as 'Total de livros com a palavra poema' FROM tbLivro
WHERE nomeLivro LIKE '%poema%'

--k)
SELECT codGenero COUNT(codLivro) as 'Total de livros agrupados pelos seu g�nero' FROM tbLivro
GROUP BY codGenero