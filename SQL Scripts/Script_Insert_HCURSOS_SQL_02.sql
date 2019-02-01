use SENAI_HCURSOS_TARDE;

insert into PROFESSORES(NOME)
	values ('Raquel')

insert into CATEGORIAS(NOME)
	values ('Gest�o')

insert into CURSOS(NOME, TITULO, ID_CATEGORIA, ID_PROFESSOR)
	values		  ('SQL', 'SQL B�SICO - PARTE 1', 1, 1),
				  ('SQL', 'SQL B�SICO - PARTE 2', 1, 1),
				  ('JAVA', 'JAVA B�SICO - PARTE 2', 1, 2),
				  ('REACT', 'REACT NATIVE - PARTE 1', 1, 2),
				  ('GEST�O', 'GEST�O DE PESSOAS', 6, 3)
/*
select * from
	CURSOS, PROFESSORES
where
	CURSOS.ID_PROFESSOR = PROFESSORES.ID
--M�todo antigo - - Menos eficiente
*/

select CURSOS.NOME AS NOME_CURSO, TITULO, PROFESSORES.NOME AS NOME_PROFESSORES from
	CURSOS inner join PROFESSORES
on
	CURSOS.ID_PROFESSOR = PROFESSORES.ID
------------------------------------------
select
	CURSOS.NOME,
	TITULO,
	PROFESSORES.NOME
from
	--intersec��o entre as tabelas CURSOS e PROFESSORES
	CURSOS inner join PROFESSORES
on
	CURSOS.ID_PROFESSOR = PROFESSORES.ID -- Traz a tabela com ID de refer�nciac combinando com o id da tabela de professores.
	and -- WHERE
	CURSOS.NOME = 'SQL'
------------------------------------------
select
	CURSOS.NOME,
	TITULO,
	PROFESSORES.NOME
from
	CURSOS right join PROFESSORES
on
	CURSOS.ID_PROFESSOR = PROFESSORES.ID
----------------------------------------
-- C = Tabela Cursos
-- P = Tabela Professores
select
	C.NOME as NOME_CURSO,
	TITULO,
	P.NOME as NOME_PROFESSOR
from
	CURSOS C left join PROFESSORES P
on
	C.ID_PROFESSOR = P.ID
-- Listagens----------------------------
select * from CATEGORIAS order by ID asc
select * from PROFESSORES order by ID asc
select * from CURSOS
-----------------Exerc�cios------------------
--1-INNER JOIN--
select
	CURSOS.*,CATEGORIAS.NOME AS NOME_CATEGORIA
from
	CURSOS inner join CATEGORIAS
on
	CURSOS.ID_CATEGORIA = CATEGORIAS.ID
--2-LEFT JOIN--
select
	CURSOS.*, CATEGORIAS.NOME as NOME_CATEGORIA
from
	CURSOS left join CATEGORIAS
on
	CURSOS.ID_CATEGORIA = CATEGORIAS.ID
--3-RIGHT JOIN--
select
	CURSOS.*, CATEGORIAS.NOME as NOME_CATEGORIA
from
	CURSOS right join CATEGORIAS
on
	CURSOS.ID_CATEGORIA = CATEGORIAS.ID
--4-LEFT JOIN--
select
	CG.NOME, CS.*
from
	CATEGORIAS CG left join CURSOS CS
on
	CG.ID = CS.ID_CATEGORIA
--5-RIGHT JOIN--
select
	CG.NOME, CS.*
from
	CATEGORIAS CG right join CURSOS CS
on
	CG.ID = CS.ID_CATEGORIA