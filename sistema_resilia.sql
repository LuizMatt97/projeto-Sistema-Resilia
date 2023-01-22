create database sistema_resilia;

create table cursos(
	id int primary key auto_increment not null,
    nome varchar(30),
    modulos varchar(15)
);

create table turmas(
	id int primary key auto_increment not null,
    numero_turma int not null
);

create table alunos(
	id int primary key auto_increment not null,
    nome varchar(30),
    CPF char(11),
    email varchar(30),
    telefone char(15)
);
	
create table facilitadores(
	id int primary key auto_increment not null,
    nome varchar(30),
    CPF char(11),
    disciplina varchar(20),
    email varchar(30),
    telefone char(15)
);

create table disciplinas(
	id int primary key auto_increment not null,
    nome varchar(20),
    materias varchar(30)
);

alter table turmas
add constraint id_fk_alunos
foreign key (id)
references alunos(id);

alter table turmas
add constraint id_fk_facilitadores
foreign key (id)
references facilitadores(id);

alter table turmas
add constraint id_fk_cursos
foreign key (id)
references cursos(id);

alter table facilitadores
add constraint id_fk_disciplinas
foreign key (id)
references disciplinas(id);
