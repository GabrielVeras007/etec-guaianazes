USE bdLoja

CREATE TRIGGER tgAtualizaCaixa 
ON tbVendas FOR INSERT
AS

 DECLARE @valorVenda SMALLMONEY, @dataVenda SMALLDATETIME
 
 SET @valorVenda =(SELECT valorVenda FROM inserted)

 SELECT @dataVenda=dataVenda FROM inserted
 
 SET @dataVenda = (SELECT CONVERT(VARCHAR(12), dataVenda, 103) FROM inserted)
 
 UPDATE tbCaixa
 SET valorFinal = valorFinal + @valorVenda
 WHERE CONVERT(varchar(12), dataAbertura, 103) = @dataVenda

------------------------executar até aqui -----------------------------------------

--testandoo trigger 
SELECT * FROM tbCaixa
SELECT * FROM tbVendas

INSERT INTO tbVendas(dataVenda, valorVenda)
VALUES
 (GETDATE(), 543)

INSERT INTO tbVendas(dataVenda, valorVenda)
VALUES
 ('19/09/2024', 1000)