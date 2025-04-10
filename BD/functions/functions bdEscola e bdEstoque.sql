--------------------------------------------------------Exerc�cios bdEscola--------------------------------------------------------------------------
USE bdEscola
GO

--1. Crie uma fun��o que informada uma data da matr�cula , retorne o dia da semana.
CREATE FUNCTION dbo.DiaDaSemana (@dataMatricula DATETIME)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @diaSemana VARCHAR(20)
    SET @diaSemana = DATENAME(WEEKDAY, @dataMatricula)
    RETURN @diaSemana
END


SELECT dbo.DiaDaSemana('02/11/2007') 'Dia da Semana'

--2. Crie uma fun��o que de acordo com a carga hor�ria do curso exiba cursor�pido ou curso extenso. (R�pido menos de 1000 horas).
CREATE FUNCTION dbo.TipoCurso (@cargaHorariaCurso VARCHAR(6))
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @tipoCurso VARCHAR(20)
    IF CAST(@cargaHorariaCurso AS INT) < 1000
        SET @tipoCurso = 'Curso R�pido'
    ELSE
        SET @tipoCurso = 'Curso Extenso'
    RETURN @tipoCurso
END


SELECT dbo.TipoCurso('2000') 'Tipo do Curso'

--3. Crie uma fun��o que de acordo com o valor do curso exiba curso caro ou cursobarato. (Curso caro acima de 400).
CREATE FUNCTION dbo.ValorCurso (@valorCurso MONEY)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @tipoCurso VARCHAR(20)
    IF @valorCurso > 400
        SET @tipoCurso = 'Curso Caro'
    ELSE
        SET @tipoCurso = 'Curso Barato'
    RETURN @tipoCurso
END


SELECT dbo.ValorCurso(100) 'Tipo do Curso'

--4. Criar uma fun��o que informada a data da matr�cula converta-a no formato dd/mm/aaaa.
CREATE FUNCTION dbo.ConverterData (@dataMatricula DATETIME)
RETURNS VARCHAR(10)
AS
BEGIN
    RETURN FORMAT(@dataMatricula, 'dd/MM/yyyy')
END


SELECT dbo.ConverterData('2015-05-05') 'Data Convertida'
--------------------------------------------------------Exerc�cios bdEstoque--------------------------------------------------------------------------
USE bdEstoque
GO

--1 Criar uma fun��o que retorne o dia de semana da venda (no formato segunda,ter�a, etc) ao lado do c�digo da venda, valor total da venda e sua data
CREATE FUNCTION dbo.DiaSemanaVenda (@codVenda INT)
RETURNS TABLE
AS
RETURN (
    SELECT codVenda,valorTotalVenda,dataVenda,DATENAME(WEEKDAY, dataVenda) 'Dia da Semana' FROM tbVenda
    WHERE codVenda = @codVenda
)

SELECT * FROM dbo.DiaSemanaVenda(1)
--2 Criar uma fun��o que receba o c�digo do cliente e retorne o total de vendas queo cliente j� realizou
CREATE FUNCTION dbo.TotalVendasCliente (@codCliente INT)
RETURNS INT
AS
BEGIN
    DECLARE @totalVendas INT
    SELECT @totalVendas = COUNT(*)
    FROM tbVenda
    WHERE codCliente = @codCliente
    RETURN @totalVendas
END

SELECT dbo.TotalVendasCliente(1) 'TotalVendas'

--3 Criar uma fun��o que receba o c�digo de um vendedor e o m�s e informe o totalde vendas do vendedor no m�s informado
--usei o codCliente pois n�o existe codVendedor
CREATE FUNCTION dbo.TotalVendasClienteMes (@codCliente INT, @mes INT)
RETURNS INT
AS
BEGIN
    DECLARE @totalVendas INT
    SELECT @totalVendas = COUNT(*) FROM tbVenda
    WHERE codCliente = @codCliente AND MONTH(dataVenda) = @mes
    RETURN @totalVendas
END


SELECT dbo.TotalVendasClienteMes(1, 2) 'TotalVendasMes'

--4 Criar uma fun��o que usando o bdEstoque diga se o cpf do cliente � ou n�o v�lido
--fun��o passada no slide

SELECT dbo.CPF_VALIDO(1)'Valida��o'

CREATE FUNCTION CPF_VALIDO(@CPF VARCHAR(11))
RETURNS CHAR(1)
AS
BEGIN
DECLARE @INDICE INT,
@SOMA INT,
@DIG1 INT,
@DIG2 INT,
@CPF_TEMP VARCHAR(11),
@DIGITOS_IGUAIS CHAR(1),
@RESULTADO CHAR(1)
SET @RESULTADO = 'N'
/*
Verificando se os digitos s�o iguais
A Principio CPF com todos o n�meros iguais s�o Inv�lidos
apesar de validar o Calculo do digito verificado
EX: O CPF 00000000000 � inv�lido, mas pelo calculo
Validaria
*/
SET @CPF_TEMP = SUBSTRING(@CPF,1,1)
SET @INDICE = 1
SET @DIGITOS_IGUAIS = 'S'
WHILE (@INDICE <= 11)
BEGIN
IF SUBSTRING(@CPF,@INDICE,1) <> @CPF_TEMP
SET @DIGITOS_IGUAIS = 'N'
SET @INDICE = @INDICE + 1
END;
--Caso os digitos n�o sej�o todos iguais Come�o o calculo do digitos
IF @DIGITOS_IGUAIS = 'N'
BEGIN
--C�lculo do 1� d�gito
SET @SOMA = 0
SET @INDICE = 1
WHILE (@INDICE <= 9)
BEGIN
SET @Soma = @Soma + CONVERT(INT,SUBSTRING(@CPF,@INDICE,1)) * (11 - @INDICE);
SET @INDICE = @INDICE + 1
END
SET @DIG1 = 11 - (@SOMA % 11)
IF @DIG1 > 9
SET @DIG1 = 0;
-- C�lculo do 2� d�gito }
SET @SOMA = 0
SET @INDICE = 1
WHILE (@INDICE <= 10)
BEGIN
SET @Soma = @Soma + CONVERT(INT,SUBSTRING(@CPF,@INDICE,1)) * (12 - @INDICE);
SET @INDICE = @INDICE + 1
END
SET @DIG2 = 11 - (@SOMA % 11)
IF @DIG2 > 9
SET @DIG2 = 0;
-- Validando
IF (@DIG1 = SUBSTRING(@CPF,LEN(@CPF)-1,1)) AND (@DIG2 =
SUBSTRING(@CPF,LEN(@CPF),1))
SET @RESULTADO = 'S'
ELSE
SET @RESULTADO = 'N'
END
RETURN @RESULTADO
END




