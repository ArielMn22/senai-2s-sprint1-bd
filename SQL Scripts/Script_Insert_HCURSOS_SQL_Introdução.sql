USE SENAI_HCURSOS_TARDE;

--Insere um novo registro na linha passando as colunas e valores
INSERT INTO CATEGORIAS(NOME)
	VALUES ('Desenvolvimento')

--Insere um novo registro na linha passando as colunas e valores
INSERT INTO CATEGORIAS
	VALUES ('Informática')

--Insere um novo registro na linha passando as colunas e valores
INSERT INTO CATEGORIAS(NOME)
	VALUES ('Design'),('Marketing')

/*
	INSERT INTO CATEGORIAS
	VALUES('Informática')

	-- Não irá funcionar, pois definimos a coluna como sendo 'UNIQUE', não podendo haver duas iguais.
*/

-------------------------------------------------------------------------------------------------------

--Lista todos os registros e campos da tabela 'Categorias'
SELECT * FROM CATEGORIAS

--Lista somente o campo NOME da tabela 'Categorias'
SELECT NOME FROM CATEGORIAS

--Ordena pelo campo ID em ordem crescente.
SELECT * FROM CATEGORIAS ORDER BY ID ASC

--Ordena pelo campo ome em ordem decrescente.
SELECT * FROM CATEGORIAS ORDER BY NOME DESC

--Seleciona todas as colunas do registro onde o ID é 1
SELECT * FROM CATEGORIAS WHERE ID = 1

--Seleciona os registros onde NOME contêm 'e'
SELECT * FROM CATEGORIAS WHERE NOME LIKE '%e%'

--Seleciona os registros onde NOME comece com 'D'
SELECT * FROM CATEGORIAS WHERE NOME LIKE 'D%'

--Seleciona os registros onde NOME termina com 'N'
SELECT * FROM CATEGORIAS WHERE NOME LIKE '%N'

--Seleciona os registros onde o ID é maior do que 2
SELECT * FROM CATEGORIAS WHERE ID > 2

--Seleciona os registros com ID entre 2 e 7, incluindo o 2 e o 7.
SELECT * FROM CATEGORIAS WHERE ID BETWEEN 2 AND 7

--Seleciona os registros com ID entre 3 e 7, incluindo o 3 e o 7.
SELECT * FROM CATEGORIAS WHERE ID BETWEEN 3 AND 6

--Seleciona os registros onde o ID é igual a 3 ou 4 ou 7.
SELECT * FROM CATEGORIAS WHERE ID IN(3,4,7)

--Seleciona os dois primeiros registros
SELECT TOP 2 * FROM CATEGORIAS

--Seleciona os registros onde ID é diferente de 3
SELECT * FROM CATEGORIAS WHERE NOT ID = 3
SELECT * FROM CATEGORIAS WHERE ID <> 3

--Conta quantos registros tem
SELECT COUNT(*) FROM CATEGORIAS

--Retorna o quantidade de registros e guarda isso em uma nova variável
SELECT COUNT(*) AS QUANTIDADE_DE_REGISTROS FROM CATEGORIAS
-------------------------------------------------------------------

UPDATE CATEGORIAS SET NOME = 'Desenvolvimento' WHERE ID = 1

-------------------------------------------------------------------

DELETE FROM CATEGORIAS WHERE ID = 4

-------------------------------------------------------------------