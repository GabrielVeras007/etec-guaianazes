--------------------------------------------------------Exercícios bdEscola--------------------------------------------------------------------------
USE bdEscola
GO

--1. Crie uma função que informada uma data da matrícula , retorne o dia da semana.
CREATE FUNCTION dbo.DiaDaSemana (@dataMatricula DATETIME)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @diaSemana VARCHAR(20)
    SET @diaSemana = DATENAME(WEEKDAY, @dataMatricula)
    RETURN @diaSemana
END


SELECT dbo.DiaDaSemana('02/11/2007') 'Dia da Semana'

--2. Crie uma função que de acordo com a carga horária do curso exiba cursorápido ou curso extenso. (Rápido menos de 1000 horas).
CREATE FUNCTION dbo.TipoCurso (@cargaHorariaCurso VARCHAR(6))
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @tipoCurso VARCHAR(20)
    IF CAST(@cargaHorariaCurso AS INT) < 1000
        SET @tipoCurso = 'Curso Rápido'
    ELSE
        SET @tipoCurso = 'Curso Extenso'
    RETURN @tipoCurso
END


SELECT dbo.TipoCurso('2000') 'Tipo do Curso'

--3. Crie uma função que de acordo com o valor do curso exiba curso caro ou cursobarato. (Curso caro acima de 400).
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

--4. Criar uma função que informada a data da matrícula converta-a no formato dd/mm/aaaa.
CREATE FUNCTION dbo.ConverterData (@dataMatricula DATETIME)
RETURNS VARCHAR(10)
AS
BEGIN
    RETURN FORMAT(@dataMatricula, 'dd/MM/yyyy')
END


SELECT dbo.ConverterData('2015-05-05') 'Data Convertida'
--------------------------------------------------------Exercícios bdEstoque--------------------------------------------------------------------------
USE bdEstoque
GO

--1 Criar uma função que retorne o dia de semana da venda (no formato segunda,terça, etc) ao lado do código da venda, valor total da venda e sua data
CREATE FUNCTION dbo.DiaSemanaVenda (@codVenda INT)
RETURNS TABLE
AS
RETURN (
    SELECT codVenda,valorTotalVenda,dataVenda,DATENAME(WEEKDAY, dataVenda) 'Dia da Semana' FROM tbVenda
    WHERE codVenda = @codVenda
)

SELECT * FROM dbo.DiaSemanaVenda(1)
--2 Criar uma função que receba o código do cliente e retorne o total de vendas queo cliente já realizou
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

--3 Criar uma função que receba o código de um vendedor e o mês e informe o totalde vendas do vendedor no mês informado
--usei o codCliente pois não existe codVendedor
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

--4 Criar uma função que usando o bdEstoque diga se o cpf do cliente é ou não válido
--função passada no slide

SELECT dbo.CPF_VALIDO(1)'Validação'

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
Verificando se os digitos são iguais
A Principio CPF com todos o números iguais são Inválidos
apesar de validar o Calculo do digito verificado
EX: O CPF 00000000000 é inválido, mas pelo calculo
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
--Caso os digitos não sejão todos iguais Começo o calculo do digitos
IF @DIGITOS_IGUAIS = 'N'
BEGIN
--Cálculo do 1º dígito
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
-- Cálculo do 2º dígito }
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




