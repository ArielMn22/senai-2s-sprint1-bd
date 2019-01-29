create database Clinicas_PET_Tarde;

use Clinicas_PET_Tarde;

create table CLINICAS(
	ID int identity primary key
	,NOME varchar(255) not null UNIQUE
	,ENDERECO varchar(255) not null
);

create table TIPODEPETS(
	ID int identity primary key
	,DESCRICAO varchar(255) not null
);

create table VETERINARIOS(
	ID int identity primary key
	,CRMV char(6) not null UNIQUE
	,NOME varchar(255) not null
	,ID_CLINICA int foreign key references CLINICAS(ID)
);

create table RACAS(
	ID int identity primary key
	,DESCRICAO varchar(255) not null
	,ID_TIPOPET int foreign key references TIPODEPETS(ID)
);

create table DONOS(
	ID int identity primary key
	,NOME varchar(255) not null
);

create table PETS(
	ID int identity primary key
	,NOME varchar(255) not null
	,DATA_NASCIMENTO date not null
	,ID_RACAPET int foreign key references RACAS(ID)
	,ID_DONO int foreign key references DONOS(ID)
);

create table ATENDIMENTOS(
	ID int identity primary key
	,ID_PET int foreign key references PETS(ID)
	,ID_VETERINARIO int foreign key references VETERINARIOS(ID)
	,DESCRICAO text not null
	,DATA_ATENDIMENTO date not null
);
