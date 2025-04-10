USE bdEscolaIdiomas
GO

--1)Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem;
SELECT nomeAluno, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso


--2)Apresentar a quantidade de alunos matriculados por nome do curso;
SELECT COUNT(nomeAluno) 'Quantidade de alunos', nomeCurso FROM tbALuno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				GROUP BY nomeCurso


--3)Apresentar a quantidade de alunos matriculados por nome da Turma;
SELECT COUNT(nomeAluno) 'Quantidade de alunos', nomeTurma FROM tbALuno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			GROUP BY nomeTurma


--4)Apresentar a quantidade de alunos que fizeram matricula em maio de 2016;
SELECT COUNT(nomeAluno) 'Quantidade de alunos', dataMatricula FROM tbALuno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		WHERE MONTH(dataMatricula) = 5 AND YEAR(dataMatricula) = 2016
			GROUP BY dataMatricula 


--5)Apresentar o nome dos alunos em ordem alfab�tica ao lado do nome das turmas e os nomes dos cursos em que est�o matr�culados;
SELECT nomeAluno, nomeTurma, nomeCurso FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				ORDER BY nomeAluno ASC


--6)Apresentar o nome dos cursos e os hor�rios em que eles s�o oferecidos;
SELECT nomeCurso, horarioTurma FROM tbCurso
		INNER JOIN tbTurma ON tbTurma.codCurso = tbCurso.codCurso


--7)Apresentar a quantidade de alunos nascidos por estado que estejam matriculados no curso de ingl�s;
SELECT COUNT(nomeAluno) 'Quantidade de alunos', naturalidadeAluno, nomeCurso FROM tbALuno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE nomeCurso = 'Ingl�s'
					GROUP BY naturalidadeAluno , nomeCurso


--8)Apresentar o nome dos alunos ao lado da data de matricula no formato dd/mm/aaaa;
SELECT nomeAluno, FORMAT(dataMatricula, 'dd/MM/yyyy') 'dataMatricula' FROM tbAluno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno


--9)Apresentar os alunos cujo nome come�e com A e que estejam matriculados no curso de ingl�s;
SELECT DISTINCT(nomeAluno), nomeCurso FROM tbALuno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE nomeCurso = 'Ingl�s' AND nomeAluno LIKE 'a%'


--10)Apresentar a quantidade de matriculas feitas no ano de 2016;
SELECT COUNT(dataMatricula) 'Quantidade de matriculas' FROM tbMatricula 
	WHERE YEAR(dataMatricula) = 2016 


--11)Apresentar a quantidade de matr�culas por nome do curso;
--O mesmo que o exerc�cio 2)
SELECT COUNT(dataMatricula) 'Quantidade de matr�culas', nomeCurso FROM tbMatricula
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				GROUP BY nomeCurso


--12)Apresentar a quantidade de alunos que fazem os cursos que custam mais de R$ 300,00;
SELECT COUNT(nomeAluno) 'Quantidade de alunos', nomeCurso FROM tbALuno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE valorCurso > 300
					GROUP BY nomeCurso

--13)Apresentar os nomes dos alunos que fazem o curso de alem�o.
SELECT nomeAluno, nomeCurso FROM tbALuno
	INNER JOIN tbMatricula ON tbAluno.codAluno = tbMatricula.codAluno
		INNER JOIN tbTurma ON tbTurma.codTurma = tbMatricula.codTurma
			INNER JOIN tbCurso ON tbCurso.codCurso = tbTurma.codCurso
				WHERE nomeCurso = 'Alem�o'