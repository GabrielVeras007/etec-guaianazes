USE BdLivrariaBrasileira
GO

--INSERTS

SELECT * FROM tbAutor

INSERT INTO tbAutor(nomeAutor)
VALUES
('Machado de Assis')
,('Cora Coraline')
,('Graciliano Ramos')
,('Clarice Lispector')
,('Erico Verissimo')

SELECT * FROM tbEditora
 
INSERT INTO tbEditora (nomeEditora)
VALUES
('Cia das Letras')
,('Atica')
,('Saraiva')

SELECT * FROM tbGenero

INSERT INTO tbGenero (nomeGenero) 
VALUES
('Romance')
,('Poesia')
,('Literatura Brasileira')

SELECT * FROM tbLivro

INSERT INTO tbLivro (nomeLivro, numPaginas, codAutor, codGenero, codEditora) 
VALUES 
('O arroz e o Feijão','500', '1', '3','1')
,('A goteira','100', '3', '3','2')
,('Inundação','150', '4', '3','3')
,('O Megazord de Itaquera','800', '3', '1','4')
,('A culpa é dos poemas','405', '1', '2','2')
,('A fada do Twix','795', '4', '3','3')
,('Uma estrela chamada Garro','100', '2', '2','4')
,('João o representante','200', '2', '3','2')
,('Gracias por ser diferente','10', '1', '1','3')
,('PingPong a guerra de dois mundos','300', '4', '3','3')
,('O laboratório 6','650', '5', '1','2')
,('O misterioso 312','70', '4', '1','3')
,('Poemas tristes','900', '3', '2','1')
,('Doces VS Salgados a REVANCHE','735', '1', '2','2')
,('DS vs NUTRI','995', '5', '3','3')
