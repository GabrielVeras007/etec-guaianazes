USE bdConfeitaria
GO

--a)Criar uma Stored Procedure para inserir as categorias de produto conforme abaixo
CREATE PROCEDURE spInsere_Categoria

@nomeCategoriaProduto VARCHAR (30)

AS
	BEGIN
		INSERT INTO tbCategoriaProduto(nomeCategoriaProduto)
			VALUES (@nomeCategoriaProduto)
		PRINT ('Categoria '+@nomeCategoriaProduto+' cadastrado com sucesso!')
	END	


EXEC spInsere_Categoria 'Bolo Festa'
EXEC spInsere_Categoria 'Bolo Simples'
EXEC spInsere_Categoria 'Torta'
EXEC spInsere_Categoria 'Salgado'


SELECT * FROM tbCategoriaProduto

--b)Criar uma Stored Procedure para inserir os produtos abaixo, sendo que, a procedure dever� antes de inserir verificar se o nome do produto j� existe, evitando assim que um produto seja duplicado:
CREATE PROCEDURE spInsere_Produto

@nomeProduto VARCHAR (30)
,@precoKiloProduto MONEY
,@codCategoriaProduto INT 

AS
	BEGIN
		IF EXISTS(SELECT codProduto FROM tbProduto WHERE nomeProduto LIKE @nomeProduto)
		BEGIN
			PRINT('Imposs�vel cadastrar, Produto de nome '+@nomeProduto+' j� cadastrado')
		END
		ELSE
		BEGIN
		INSERT INTO tbProduto (nomeProduto, precoKiloProduto, codCategoriaProduto)
			VALUES (@nomeProduto, @precoKiloProduto, @codCategoriaProduto)
			DECLARE @codigo INT
			SET @codigo = (SELECT MAX(codProduto) FROM tbProduto)
		PRINT ('Produto '+@nomeProduto+' cadastro com sucesso! com c�digo '+ CONVERT(VARCHAR(6), @codigo) )
		END	
	END

EXEC spInsere_Produto 'Bolo Floresta Negra', '42.00', '1'
EXEC spInsere_Produto 'Bolo Prest�gio', '43.00', '1'
EXEC spInsere_Produto 'Bolo Nutella', '44.00', '1'
EXEC spInsere_Produto 'Bolo Formigueiro', '17.00', '2'
EXEC spInsere_Produto 'Bolo de cenoura', '19.00', '2'
EXEC spInsere_Produto 'Torta de palmito', '45.00', '3'
EXEC spInsere_Produto 'Torta de frango e catupiry', '47.00', '3'
EXEC spInsere_Produto 'Torta de escarola', '44.00', '3'
EXEC spInsere_Produto 'Coxinha frango', '25.00', '4'
EXEC spInsere_Produto 'Esfiha carne', '27.00', '4'
EXEC spInsere_Produto 'Folhado queijo', '31.00', '4'
EXEC spInsere_Produto 'Risoles misto', '29.00', '4'

SELECT * FROM tbProduto

--c)Criar uma stored procedure para cadastrar os clientes abaixo relacionados, sendo que dever�o ser feitas duas valida��es:
--Verificar pelo CPF se o cliente j� existe. Caso j� exista emitir a mensagem: �Cliente cpf XXXXX j� cadastrado� (Acrescentar a coluna CPF)
--Verificar se o cliente � morador de Itaquera ou Guaianases, pois a confeitaria n�o realiza entregas para clientes que residam fora desses bairros.
--Caso o cliente n�o seja morador desses bairros enviar a mensagem �N�o foi poss�vel cadastrar o cliente XXXX pois o bairro XXXX n�o � atendido pela confeitaria�CREATE PROCEDURE spInsere_Cliente

@nomeCliente VARCHAR (70)
,@dataNascimentoCliente DATE
,@ruaCliente VARCHAR (40)
,@numCasaCliente INT 
,@cepCliente VARCHAR (20)
,@bairroCliente VARCHAR (40)
,@cpfCliente VARCHAR (20)
,@sexoCliente VARCHAR (9)

AS
	BEGIN
		IF EXISTS (SELECT 1 FROM tbCliente WHERE cpfCliente = @cpfCliente)
		BEGIN
			PRINT('Cliente cpf '+@cpfCliente+' j� cadastrado')
		END
		ELSE IF @bairroCliente NOT IN ('Guaianases', 'Itaquera')
		BEGIN
			PRINT('N�o foi poss�vel cadastrar o Cliente '+@nomeCliente+' poi o bairro '+@bairroCliente+' n�o � atendido pela confeitaria')
		END
		ELSE
		BEGIN
		INSERT INTO tbCliente (nomeCliente,dataNascimentoCliente,ruaCliente,numCasaCliente,cepCliente,bairroCliente,cpfCliente,sexoCliente)
			VALUES (@nomeCliente,@dataNascimentoCliente,@ruaCliente,@numCasaCliente,@cepCliente,@bairroCliente,@cpfCliente,@sexoCliente)
			DECLARE @codigo INT
			SET @codigo = (SELECT MAX(codCliente) FROM tbCliente)
		PRINT ('Cliente '+@nomeCliente+' cadastrado com sucesso! com c�digo '+ CONVERT(VARCHAR(6), @codigo) )
		END	
	END

EXEC spInsere_Cliente 'Samira Fatah', '05/05/1990', 'Rua Aguape�', '1000', '08.090-000', 'Guaianases', '968.784.630-50', 'F'
EXEC spInsere_Cliente 'Celia Nogueira', '06/06/1992', 'Rua Andes', '234', '08.456-090', 'Guaianases', '424.643.865-00', 'F'
EXEC spInsere_Cliente 'Paulo Cesar Siqueira', '04/04/1984', 'Rua Castelo do Piau�', '232', '08.109-000', 'Itaquera', '567.234.845-60', 'M'
EXEC spInsere_Cliente 'Rodrigo Favaroni', '09/04/1991', 'Rua Sans�o Castelo Branco', '10', '08.431-090', 'Guaianases', '123.987.543-50', 'M'
EXEC spInsere_Cliente 'Fl�via Regina Brito', '22/04/1992', 'Rua Mariano Moro', '300', '08.300-123', 'Itaquera', '766.974.152-20', 'F'


SELECT * FROM tbCliente

--d)Criar via stored procedure as encomendas abaixo relacionadas, fazendo as verifica��es abaixo:
--No momento da encomenda o cliente ir� fornecer o seu cpf. 
--Caso ele n�o tenha sido  cadastrado enviar a mensagem �n�o foi poss�vel efetivar a encomenda pois o cliente xxxx n�o est� cadastrado�
--Verificar se a data de entrega n�o � menor do que a data da encomenda. Caso seja enviar a mensagem �n�o � poss�vel entregar uma encomenda antes da encomenda ser realizada�
--Caso tudo esteja correto, efetuar a encomenda e emitir a mensagem: �Encomenda XXX para o cliente YYY efetuada com sucesso� 
--sendo que no lugar de XXX dever� aparecer o n�mero da encomenda e no YYY dever� aparecer o nome do cliente
CREATE PROCEDURE spInsere_Encomenda

@dataEncomenda DATE
,@codCliente INT
,@valorTotalEncomenda MONEY
,@dataEntregaEncomenda DATE
,@nomeCliente VARCHAR (70) = 'Samira Fatah'
,@cpfCliente VARCHAR (20) = '968.784.630-50'

AS
	BEGIN
		IF NOT EXISTS (SELECT 1 FROM tbCliente WHERE cpfCliente LIKE @cpfCliente)
		BEGIN
			PRINT('N�o foi poss�vel efetivar a encomenda pois o Cliente '+@nomeCliente+' n�o est� cadastrado')
		END
		ELSE IF @dataEntregaEncomenda < @dataEncomenda 
		BEGIN
			PRINT('N�o � poss�vel entregar uma encomenda antes da encomenda ser realizada')
		END
		ELSE
		BEGIN
		INSERT INTO tbEncomenda (dataEncomenda, codCliente ,valorTotalEncomenda, dataEntregaEncomenda)
			VALUES (@dataEncomenda, @codCliente, @valorTotalEncomenda, @dataEntregaEncomenda)
			DECLARE @codigo INT
			SET @codigo = (SELECT MAX(codEncomenda) FROM tbEncomenda)
		PRINT ('Encomenda '+CONVERT(VARCHAR(6), @codigo)+' para o Cliente '+@nomeCliente+' efetuada com sucesso')
		END	
	END

EXEC spInsere_Encomenda '08/08/2015', '1', '450.00', '15/08/2015'
EXEC spInsere_Encomenda '10/10/2015', '2', '200.00', '15/10/2015'
EXEC spInsere_Encomenda '10/10/2015', '3', '150.00', '10/12/2015'
EXEC spInsere_Encomenda '06/10/2015', '1', '250.00', '12/10/2015'
EXEC spInsere_Encomenda '05/10/2015', '4', '150.00', '12/10/2015'

SELECT * FROM tbEncomenda

--e)Ao adicionar a encomenda, criar uma Stored procedure, para que sejam inseridos os itens da encomenda conforme tabela a seguir. Itens da encomenda:
CREATE PROCEDURE spInsere_ItensEncomenda

@codEncomenda INT
,@codProduto INT
,@quantidadeKilos INT
,@subTotal MONEY

AS
	BEGIN
		INSERT INTO tbItensEncomenda (codEncomenda, codProduto, quantidadeKilos, subTotal)
			VALUES (@codEncomenda, @codProduto, @quantidadeKilos, @subTotal)
			DECLARE @codigo INT
			SET @codigo = (SELECT MAX(codItensEncomenda) FROM tbItensEncomenda)
		PRINT ('Itens da Encomenda '+CONVERT(VARCHAR(6), @codigo)+' inseridos com sucesso')
	END	


EXEC spInsere_ItensEncomenda 1, 1, 2.5, 105.00
EXEC spInsere_ItensEncomenda 1, 10, 2.6, 70.00
EXEC spInsere_ItensEncomenda 1, 9, 6, 150.00
EXEC spInsere_ItensEncomenda 1, 12, 4.3, 125.00
EXEC spInsere_ItensEncomenda 2, 9, 8, 200.00
EXEC spInsere_ItensEncomenda 3, 11, 3.2, 100.00
EXEC spInsere_ItensEncomenda 3, 9, 2, 50.00
EXEC spInsere_ItensEncomenda 4, 2, 3.5, 150.00
EXEC spInsere_ItensEncomenda 4, 3, 2.2, 100.00
EXEC spInsere_ItensEncomenda 5, 6, 3.4, 150.00

SELECT * FROM tbItensEncomenda

--f)Ap�s todos os cadastros, criar Stored procedures para alterar o que se pede:
--1.O pre�o dos produtos da categoria �Bolo festa� sofreram um aumento de 10%
CREATE PROCEDURE spAumento_BoloFesta
AS
	BEGIN
		UPDATE tbProduto
		SET precoKiloProduto = precoKiloProduto * 1.10
		WHERE codCategoriaProduto = (
			SELECT codCategoriaProduto
			FROM tbCategoriaProduto
			WHERE nomeCategoriaProduto = 'Bolo festa')
	END

EXEC spAumento_BoloFesta

SELECT * FROM tbProduto

--2.O pre�o dos produtos categoria �Bolo simples� est�o em promo��o e ter�o um desconto de 20%;
CREATE PROCEDURE spDesconto_BoloSimples
AS
	BEGIN
		UPDATE tbProduto
		SET precoKiloProduto = precoKiloProduto * 0.80
		WHERE codCategoriaProduto = (
			SELECT codCategoriaProduto
			FROM tbCategoriaProduto
			WHERE nomeCategoriaProduto = 'Bolo Simples')
	END

EXEC spDesconto_BoloSimples

SELECT * FROM tbProduto

--3.O pre�o dos produtos categoria �Torta� aumentaram 25%
CREATE PROCEDURE spAumento_Torta
AS
	BEGIN
		UPDATE tbProduto
		SET precoKiloProduto = precoKiloProduto * 1.25
		WHERE codCategoriaProduto = (
			SELECT codCategoriaProduto
			FROM tbCategoriaProduto
			WHERE nomeCategoriaProduto = 'Torta')
	END

EXEC spAumento_Torta

SELECT * FROM tbProduto

--4.O pre�o dos produtos categoria �Salgado�, com exce��o da esfiha de carne, sofreram um aumento de 20%
CREATE PROCEDURE spAumento_Salgado
AS
	BEGIN
		UPDATE tbProduto
		SET precoKiloProduto = precoKiloProduto * 1.20
		WHERE codCategoriaProduto = (
			SELECT codCategoriaProduto
			FROM tbCategoriaProduto
			WHERE nomeCategoriaProduto = 'Salgado')
			AND nomeProduto != 'Esfiha de carne'
	END

EXEC spAumento_Salgado

SELECT * FROM tbProduto

--g)Criar uma procedure para excluir clientes pelo CPF sendo que:
--1. Caso o cliente possua encomendas emitir a mensagem �Impossivel remover esse cliente pois o cliente XXXXX possui encomendas; onde XXXXX � o nome do cliente.
--2. Caso o cliente n�o possua encomendas realizar a remo��o e emitir a mensagem �Cliente XXXX removido com sucesso�, onde XXXX � o nome do cliente;CREATE PROCEDURE spExclui_Cliente

@cpfCliente VARCHAR(20)

AS

BEGIN
    DECLARE @codCliente INT
    DECLARE @nomeCliente VARCHAR(70)

    SELECT @codCliente = codCliente, @nomeCliente = nomeCliente FROM tbCliente
    WHERE cpfCliente = @cpfCliente


    IF EXISTS (SELECT 1 FROM tbEncomenda WHERE codCliente = @codCliente)
    BEGIN
        PRINT ('Imposs�vel remover esse cliente pois o cliente ' + @nomeCliente + ' possui encomendas.')
        RETURN
    END

    DELETE FROM tbCliente 
    WHERE codCliente = @codCliente

    PRINT ('Cliente ' + @nomeCliente + ' removido com sucesso.')
END
	

EXEC spExclui_Cliente '766.974.152-20'


SELECT * FROM tbCliente

--h)Criar uma procedure que permita excluir qualquer item de uma encomenda cuja data de entrega seja maior que a data atual.
--Para tal o cliente dever� fornecer o c�digo da encomenda e o c�digo do produto que ser� exclu�do da encomenda.
--A procedure dever� remover o item e atualizar o valor total da encomenda, do qual dever� ser subtra�do o valor do item a ser removido. 
--A procedure poder� remover apenas um item da encomenda de cada vez
CREATE PROCEDURE spExclui_Encomenda

@codEncomenda INT
,@codProduto INT

AS

BEGIN
	DECLARE @dataEntrega DATE
    DECLARE @subTotal MONEY

    SELECT @dataEntrega = dataEntregaEncomenda
    FROM tbEncomenda
    WHERE codEncomenda = @codEncomenda

    IF @dataEntrega <= GETDATE()
    BEGIN
        PRINT ('N�o � poss�vel remover o item pois a data de entrega n�o passou ou � hoje.')
    END

    SELECT @subTotal = subTotal FROM tbItensEncomenda
    WHERE codEncomenda = @codEncomenda AND codProduto = @codProduto

	IF @subTotal IS NULL
    BEGIN
        PRINT ('Item n�o encontrado na encomenda.')
    END

    DELETE FROM tbItensEncomenda WHERE codEncomenda = @codEncomenda AND codProduto = @codProduto

    UPDATE tbEncomenda
    SET valorTotalEncomenda = valorTotalEncomenda - @subTotal
    WHERE codEncomenda = @codEncomenda

    PRINT ('Item removido com sucesso.')
END
	

EXEC spExclui_Encomenda '6', '1'

SELECT * FROM tbEncomenda