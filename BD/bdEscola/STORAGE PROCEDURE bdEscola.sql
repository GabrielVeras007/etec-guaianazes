USE bdEscola


--1. Criar uma stored procedure “Busca_Aluno” que receba o código do aluno e retorne seu nome e data de nascimento.
CREATE PROCEDURE spBusca_Aluno

@codAluno INT

AS
BEGIN
    SELECT nomeAluno, dataNascimentoAluno FROM tbAluno
    WHERE codAluno = @codAluno
END

EXEC spBusca_Aluno '1'

--2. Criar uma stored procedure “Insere_Aluno” que insira um registro na tabela de Alunos.
CREATE PROCEDURE spInsere_Aluno

@nomeAluno VARCHAR (50)
,@dataNascimentoAluno DATETIME
,@rgAluno VARCHAR (14)
,@naturalidadeAluno VARCHAR(20)
,@cpfAluno VARCHAR(20)

AS
	BEGIN
		INSERT INTO tbAluno (nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno,cpfAluno)
			VALUES (@nomeAluno, @dataNascimentoAluno, @rgAluno, @naturalidadeAluno, @cpfAluno)
		PRINT ('Aluno '+@nomeAluno+' cadastro com sucesso!')
	END	

EXEC spInsere_Aluno 'Pedro', '14/07/1997', '33.333.333-0', 'SP', '968.784.630-50'

SELECT * FROM tbAluno

--3. Criar uma stored procedure “Aumenta_Preco” que, dados o nome do curso e um percentual, aumente o valor do curso com a porcentagem informada
CREATE PROCEDURE spAumenta_Preço

@nomeCurso VARCHAR(20),
@percentual FLOAT

AS
BEGIN
    UPDATE tbCurso
    SET valorCurso = valorCurso * (1 + @percentual / 100)
    WHERE nomeCurso = @nomeCurso
END

EXEC spAumenta_Preço 'Inglês', '50'

SELECT * FROM tbCurso

--4. Criar uma stored procedure “Exibe_Turma” que, dado o nome da turma exiba todas as informações dela.
CREATE PROCEDURE spExibe_Turma 

@nomeTurma VARCHAR(5)

AS
BEGIN
    SELECT * FROM tbTurma
    WHERE nomeTurma = @nomeTurma
END

EXEC spExibe_Turma '1IA'

--5. Criar uma stored procedure “Exibe_AlunosdaTurma” que, dado o nome da turma exiba os seus alunos
CREATE PROCEDURE spExibe_AlunosdaTurma 

@nomeTurma VARCHAR(5)

AS
	BEGIN
		SELECT a.nomeAluno, a.dataNascimentoAluno FROM tbMatricula m
		INNER JOIN tbAluno a ON m.codAluno = a.codAluno
		INNER JOIN tbTurma t ON m.codTurma = t.codTurma
		WHERE t.nomeTurma = @nomeTurma
	END

EXEC spExibe_AlunosdaTurma '1IA' 

--6- Criar uma stored procedure para inserir alunos, verificando pelo cpf se o aluno existe ou não, e informar essa condição via mensagem
ALTER PROCEDURE spInsere_Aluno

@nomeAluno VARCHAR (50)
,@dataNascimentoAluno DATETIME
,@rgAluno VARCHAR (14)
,@naturalidadeAluno VARCHAR(20)
,@cpfAluno VARCHAR(20)

AS
	BEGIN
		IF EXISTS(SELECT codAluno FROM tbAluno WHERE cpfAluno LIKE @cpfAluno)
		BEGIN
			PRINT('Impossível cadastrar, Aluno cpf '+@cpfAluno+' já cadastrado')
		END
		ELSE
		BEGIN
		INSERT INTO tbAluno (nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno,cpfAluno)
			VALUES (@nomeAluno, @dataNascimentoAluno, @rgAluno, @naturalidadeAluno, @cpfAluno)
			DECLARE @codigo INT
			SET @codigo = (SELECT MAX(codAluno) FROM tbAluno)
		PRINT ('Aluno '+@nomeAluno+' cadastro com sucesso! com código '+ CONVERT(VARCHAR(6), @codigo) )
		END	
	END

EXEC spInsere_Aluno 'Pedro', '14/07/1997', '33.333.333-0', 'SP', '968.784.630-50'

EXEC spInsere_Aluno 'Jorge', '24/07/1996', '33.333.334-0', 'SP', '168.784.630-50'

SELECT * FROM tbAluno

--7- Criar uma stored procedure que receba o nome do curso e o nome do aluno e matricule o mesmo no curso pretendido
CREATE PROCEDURE spMatricula_Aluno
    @nomeCurso VARCHAR(20),
    @nomeAluno VARCHAR(50)
AS
BEGIN
    DECLARE @codAluno INT;
    DECLARE @codCurso INT;
    DECLARE @codTurma INT;

    SET @codAluno = (SELECT codAluno FROM tbAluno WHERE nomeAluno = @nomeAluno);
    SET @codCurso = (SELECT codCurso FROM tbCurso WHERE nomeCurso = @nomeCurso);
    SET @codTurma = (SELECT TOP 1 codTurma FROM tbTurma WHERE codCurso = @codCurso); 

    IF @codAluno IS NULL OR @codCurso IS NULL OR @codTurma IS NULL
    BEGIN
        PRINT 'Aluno, Curso, ou Turma não encontrados.'
    END
    ELSE
    BEGIN
        INSERT INTO tbMatricula (dataMatricula, codAluno, codTurma)
        VALUES (GETDATE(), @codAluno, @codTurma)
        PRINT 'Aluno matriculado com sucesso.'
    END
END

EXEC spMatricula_Aluno 'Francês', 'Neemias'

EXEC spMatricula_Aluno 'Inglês', 'Pedro'

SELECT * FROM tbMatricula