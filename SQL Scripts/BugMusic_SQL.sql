create database BugMusic_Tarde;

use BugMusic_Tarde;

create table GENEROS(
	ID int identity primary key
	,NOME varchar(255) not null
);

create table BANDAS(
	ID int identity primary key
	,NOME varchar(255) not null
	,ID_GENERO int foreign key references GENEROS(ID)
);

create table ALBUNS(
	ID int identity primary key
	,NOME varchar(255) not null
	,ID_BANDA int foreign key references BANDAS(ID)
);

create table CANTORES(
	ID int identity primary key 
	,NOME varchar(255) not null
);

create table MUSICAS(
	ID int identity primary key
	,NOME varchar(255) not null
	,ID_ALBUM int foreign key references ALBUNS(ID)
);

-- Tabelas intermediárias

create table BANDAS_CANTORES(
	ID_CANTOR int foreign key references CANTORES(ID)
	,ID_BANDA int foreign key references BANDAS(ID)
);