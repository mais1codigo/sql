create database faculdade;

use faculdade;

create table departamento(
	id int not null auto_increment,
    nome varchar(255) not null,
    local varchar(255),
    
	primary key(id)
    );
    
    create table aluno(
    nome varchar(255) not null,
    matricula varchar(10) not null,	
    endereço varchar(255),
    
    primary key(matricula)
    );
    
	create table disciplina(
    nome varchar(100) not null,
    carga_horaria int not null default 30,	
    ementa text,
    
    primary key(nome)
    );
    
	create table professor(
	inicio_contrato date,
    nome varchar(255) not null,
    cpf varchar(11) not null,
	depto_id int,
    
    primary key(cpf)
    );
    
	create table contato_professor(
	prof_cpf varchar(11) not null,
    contato varchar(14),
    
   foreign key (prof_cpf) references professor(cpf),
   constraint PK_professor_contato primary key (prof_cpf, contato)
    );
    
    