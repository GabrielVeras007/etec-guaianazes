USE bdEscolaDeIdiomas

GO

--SELECTS

--a)Criar uma consulta que retorne o nome e o preço dos cursos que custem abaixo so valor médio.
SELECT nomeCurso, valorCurso FROM tbCurso
	WHERE valorCurso < (SELECT AVG(valorCurso) FROM tbCurso)

--b)Criar uma consulta que retorne o nome e op rg do aluno mais novo.
SELECT nomeAluno, rgAluno, dataNascAluno FROM tbAluno
	WHERE dataNascAluno =(SELECT MIN(dataNascAluno) FROM tbAluno)
	
--c)Criar uma consulta que retorne o nome do aluno mais velho.
SELECT nomeAluno, dataNascAluno FROM tbAluno
	WHERE dataNascAluno =(SELECT MAX(dataNascAluno) FROM tbAluno)

--d)Criar uma consulta que retorne o nome e o valor do curso mais caro.
SELECT nomeCurso, valorCurso FROM tbCurso
	WHERE valorCurso = (SELECT MAX(valorCurso) FROM tbCurso)

--e)Criar uma consulta que retorne o nome do aluno e o nome do curso, do aluno que fez a última matricula
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE dataMatricula = (SELECT MAX(dataMatricula) FROM tbMatricula)

--f)Criar uma consulta que retorne o nome do primeiro aluno a ser matriculado na Escola de Idiomas.
SELECT nomeAluno, dataMatricula FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
				WHERE dataMatricula = (SELECT MIN(dataMatricula) FROM tbMatricula)

--g)Criar uma consulta que retorne o nome, rg e data de nascimento de todos os alunos que estejam matriculados no curso de inglês.
SELECT nomeAluno, rgAluno, dataMatricula FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
				WHERE descTurma = 'Inglês 1A'