use SENAI_HCURSOS_TARDE;

insert into PROFESSORES(NOME)
	values ('Raquel')

insert into CATEGORIAS(NOME)
	values ('Gestão')

insert into CURSOS(NOME, TITULO, ID_CATEGORIA, ID_PROFESSOR)
	values		  ('SQL', 'SQL BÁSICO - PARTE 1', 1, 1),
				  ('SQL', 'SQL BÁSICO - PARTE 2', 1, 1),
				  ('JAVA', 'JAVA BÁSICO - PARTE 2', 1, 2),
				  ('REACT', 'REACT NATIVE - PARTE 1', 1, 2),
				  ('GESTÃO', 'GESTÃO DE PESSOAS', 6, 3)
/*
select * from
	CURSOS, PROFESSORES
where
	CURSOS.ID_PROFESSOR = PROFESSORES.ID
--Método antigo - - Menos eficiente
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
	--intersecção entre as tabelas CURSOS e PROFESSORES
	CURSOS inner join PROFESSORES
on
	CURSOS.ID_PROFESSOR = PROFESSORES.ID -- Traz a tabela com ID de referênciac combinando com o id da tabela de professores.
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
-----------------Exercícios------------------
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