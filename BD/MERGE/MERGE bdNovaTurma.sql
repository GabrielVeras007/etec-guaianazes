USE bdNovaTurma

MERGE tb3A dest
	USING (SELECT idAluno, nomeAluno, statusAluno FROM tb2A ori WHERE statusAluno = 'APROVADO')
	AS fonte
	ON 0 =1
	WHEN NOT MATCHED THEN
	INSERT (nomeAluno, statusAluno)
    VALUES (fonte.nomeAluno, fonte.statusAluno);

MERGE tb3A dest
	USING (SELECT idAluno, nomeAluno, statusAluno FROM tb2B ori WHERE statusAluno = 'APROVADO')
	AS fonte
	ON 0 = 1
	WHEN NOT MATCHED THEN
	INSERT (nomeAluno, statusAluno)
    VALUES (fonte.nomeAluno, fonte.statusAluno);

SELECT * FROM tb3A