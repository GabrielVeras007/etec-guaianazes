USE bdEscolaIdiomas
GO
--1.
CREATE VIEW vwPreço_Baixo AS
	SELECT CodCurso, nomeCurso, cargaHorariaCurso, valorCurso FROM tbCurso

SELECT*FROM vwPreço_Baixo
WHERE valorCurso < (SELECT AVG(valorCurso) FROM tbCurso)

--2.
SELECT*FROM vwPreço_Baixo
ORDER BY cargaHorariaCurso

--3.
CREATE VIEW vwAlunos_Turma AS
	SELECT nomeAluno , nomeCurso  FROM tbAluno
		INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
				INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso

SELECT COUNT(nomeAluno) 'Quantidade de Alunos', nomeCurso FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
			INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
				INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
--4.
SELECT nomeTurma FROM vwAlunos_Turma
WHERE nomeAluno = (SELECT MAX(nomeAluno) FROM tbAluno)

--5.
CREATE VIEW vwTurma_Curso AS
	SELECT nomeCurso , nomeTurma FROM tbTurma
			INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
				INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso

--6.
SELECT nomeCurso FROM vwTurma_Curso
WHERE nomeTurma = (SELECT MIN(nomeTurma) FROM tbTurma)

