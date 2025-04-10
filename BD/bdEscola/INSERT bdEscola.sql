USE bdEscola

SELECT * FROM tbAluno

INSERT INTO tbAluno (nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno, cpfAluno)
VALUES ('Paulo Santos', '03/10/2000','82.292.122-0','SP', '096.249.300-74')
	   ,('Maria da Gloria','10/03/1999','45.233.123-0','SP', '683.505.350-08')
	   ,('Perla Nogueira Silva','04/04/1998','23.533.211-9','SP', '667.137.750-20')
	   ,('Gilson Barros Silva','09/09/1995','34.221.111-x','PE', '864.945.090-37')
	   ,('Mariana Barbosa Santos','10/10/2001','54.222.122-9','RJ', '884.763.000-26')

SELECT * FROM tbCurso

INSERT INTO tbCurso (nomeCurso,cargaHorariaCurso,valorCurso)
VALUES ('Inglês', '2000','356.00')
	   ,('Alemão', '3000','478.00')

SELECT * FROM tbTurma

INSERT INTO tbTurma(nomeTurma,codCurso,horarioTurma)
VALUES ('1IA', '1','01/01/1900 12:00:00')
	   ,('1IB', '1','01/01/1900 18:00:00')
	   ,('1AA', '2','01/01/1900 19:00:00')

SELECT * FROM tbMatricula

INSERT INTO tbMatricula(dataMatricula,codAluno, codTurma )
VALUES ('10/03/2015', '1', '1')
	   ,('05/04/2014', '2', '1')
	   ,('05/03/2012', '3', '2')
	   ,('03/03/2016', '1', '3')
	   ,('05/07/2015', '4', '2')
	   ,('07/05/2015', '4', '3')
	   ,('06/06/2015', '5', '1')
	   ,('05/05/2015', '5', '3')

