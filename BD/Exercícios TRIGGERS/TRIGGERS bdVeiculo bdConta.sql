------------------------Exercício 1-----------------------------------------
USE bdVeiculo
--1-Criar um trigger que ao veículo tomar uma multa os pontos da multa 
--sejam atualizados na tabela do motorista no campo pontuacaoAcumulada. 
--Caso o motorista alcance 20 pontos informar via mensagem que o mesmo poderá ter sua habilitação suspensa.


CREATE TRIGGER tgMulta
ON tbMultas FOR INSERT
AS
BEGIN
    DECLARE @codVeiculo INT
    DECLARE @codMotorista INT
    DECLARE @pontosMulta INT
    DECLARE @pontosAtuais INT
    DECLARE @pontosTotal INT

    SELECT @codVeiculo = codVeiculo, @pontosMulta = CAST(i.pontosMulta AS INT)
    FROM inserted i

    --Código do motorista
    SELECT @codMotorista = codMotorista FROM tbVeiculo WHERE codVeiculo = @codVeiculo

    --Pontuação acumulada atual
    SELECT @pontosAtuais = CAST(pontuacaoAcumulada AS INT) FROM tbMotorista 
    WHERE codMotorista = @codMotorista

    --Nova pontuação total
    SET @pontosTotal = @pontosAtuais + @pontosMulta

    --Atualizando a pontuação acumulada
    UPDATE tbMotorista
    SET pontuacaoAcumulada = CAST(@pontosTotal AS VARCHAR(20))
    WHERE codMotorista = @codMotorista

    --Verificando se a pontuação total é maior ou igual a 20
    IF @pontosTotal >= 20
    BEGIN
        PRINT 'O motorista poderá ter sua habilitação suspensa. Total de pontos: ' + CAST(@pontosTotal AS VARCHAR(3))
    END
END

--Testando trigger
INSERT INTO tbMotorista (nomeMotorista, dataNascimentoMotorista, cpfMotorista, CNHMotorista, pontuacaoAcumulada)
VALUES 
('João Silva', '1980-05-12', '123.456.789-00', '12345678900', '0'),
('Maria Souza', '1990-03-22', '987.654.321-00', '98765432100', '15')

INSERT INTO tbVeiculo (modeloVeiculo, placa, renavam, anoVeiculo, codMotorista)
VALUES 
('Honda Civic', 'ABC1234', '00123456789', '2020', 1),
('Toyota Corolla', 'XYZ9876', '00987654321', '2019', 2)

INSERT INTO tbMultas (dataMulta, horaMulta, pontosMulta, codVeiculo)
VALUES ('2024-10-05', '10:30:00', '10', 1)

SELECT * FROM tbMotorista WHERE codMotorista = 1

 ------------------------Exercício 2-----------------------------------------
USE bdConta
--a-Ao ser feito um depósito atualize o saldo da conta corrente somando a quantia depositada
CREATE TRIGGER tgDeposito
ON tbDeposito FOR INSERT
AS
BEGIN
    DECLARE @numConta INT
    DECLARE @valorDeposito SMALLMONEY

    SELECT @numConta = numConta, @valorDeposito = valorDeposito
    FROM inserted

    UPDATE tbContaCorrente
    SET saldoConta = saldoConta + @valorDeposito
    WHERE numConta = @numConta
END
--Testando trigger
INSERT INTO tbCliente (nomeCliente, cpfCliente)
VALUES ('Carlos Almeida', '333.222.111-00'), 
       ('Ana Oliveira', '444.555.666-00')

INSERT INTO tbContaCorrente (saldoConta, codCliente)
VALUES (1000.00, 1),  -- Cliente Carlos Almeida
       (500.00, 2);   -- Cliente Ana Oliveira

INSERT INTO tbDeposito (valorDeposito, numConta, dataDeposito, horaDeposito)
VALUES (200.00, 1, '2024-10-07', '09:00:00')

SELECT * FROM tbContaCorrente WHERE numConta = 1

--b-Ao ser feito um saque atualize o saldo da conta corrente descontando o valor caso tenha saldo suficiente
CREATE TRIGGER tgSaque
ON tbSaque FOR INSERT
AS
BEGIN
    DECLARE @numConta INT
    DECLARE @valorSaque SMALLMONEY
    DECLARE @saldoAtual SMALLMONEY

    SELECT @numConta = numConta, @valorSaque = valorSaque
    FROM inserted

    SELECT @saldoAtual = saldoConta FROM tbContaCorrente WHERE numConta = @numConta

    IF @saldoAtual >= @valorSaque
    BEGIN
        --Atualizando o saldo da conta subtraindo o valor do saque
        UPDATE tbContaCorrente
        SET saldoConta = saldoConta - @valorSaque
        WHERE numConta = @numConta
    END
    ELSE
    BEGIN
        --Erro caso não haja saldo suficiente
        PRINT 'Saldo insuficiente para realizar o saque.'
    END
END

--Testando trigger
INSERT INTO tbSaque (valorSaque, numConta, dataSaque, horaSaque)
VALUES (300.00, 2, '2024-10-08', '14:00:00')

SELECT * FROM tbContaCorrente WHERE numConta = 2