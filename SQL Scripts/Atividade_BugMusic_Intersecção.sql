use BugMusic_Tarde;

insert into GENEROS (NOME)
	values ('Rock'),('Sertanejo'),('Pop'),('Samba')

select * from GENEROS

insert into BANDAS (NOME, ID_GENERO)
	values ('Ultraje a Rigor', 1),('Fernando e Sorocaba', 2), ('Barão Vermelho', 3), ('Turma do Pagode', 4)

select * from BANDAS

insert into ALBUNS(NOME, ID_BANDA)
	values ('Recomeço', 1), ('Vendaval', 2), ('Maior Abandonado', 3), ('Aquele', 4)

select * from ALBUNS

insert into MUSICAS(NOME, ID_ALBUM)
	values ('Inútil', 1), ('Mim Qul', 2), ('Paga Pau', 2), ('Baby Suporte', 3), ('Sem Verer Tocar', 1), ('Vendavagonha', 3), ('Brilho no Olhar', 4)

select * from MUSICAS

insert into CANTORES(NOME)
	values ('Roger Moreira'), ('Mingau'), ('Bacalhau'), ('Marcos Kleine'), ('Fernando Zorzanello Bonifácio'), ('Fernando Fakei de Assis'), ('Guto Goffi'), ('Maurício Barros'), ('Fernando Magalhães')

select * from CANTORES

insert into BANDAS_CANTORES(ID_CANTOR,ID_BANDA)
	values (1, 1), (2, 1), (3, 1), (4, 1), (5, 2), (6, 2), (7, 3), (8, 3), (9, 3)

select * from CANTORES
select * from BANDAS

--Informações
--Genêros das bandas
select
	BANDAS.NOME as NOME_DA_BANDA,
	GENEROS.NOME as GENERO_DA_BANDA
from
	BANDAS inner join GENEROS
on
	BANDAS.ID_GENERO = GENEROS.ID	
--Álbuns de cada banda
select
	ALBUNS.NOME, BANDAS.NOME
from