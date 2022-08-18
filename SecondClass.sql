--create database livraria_lavezzo

use [livraria_lavezzo]
go
create table editora(
    codigo int not null,
    nome varchar(50),
    constraint pk_editora primary key (codigo)
)
go
create table assunto(
    sigla char(3) not null,
    descricao varchar(50),
    constraint PK_Sigla primary key (sigla)
)
go
create table autor(
    matricula int not null,
    nome varchar(50) not null,
    data_nascimento date,
    nacionalidade varchar(50),
    constraint pk_autor primary key (matricula)
)
go
create table livro(
    codigo int not null ,
    titulo varchar(50) null,
    data_lancamento date null,
    valor money null,
    data_hora_cadastro datetime null default getdate(),
    ativo BIT not null default 1,
    cod_editora int ,
    sigla_assunto char(3),
    constraint pk_livro primary key (codigo),
    --FOREIGN KEY Example
    constraint fk_livro_editora FOREIGN key (cod_editora) references editora(codigo),
    constraint fk_livro_assunto FOREIGN key (sigla_assunto) references assunto(sigla),
)
go
create table autoria(
    codigo_livro int not null, 
    mat_autor int not null,
    constraint pk_autoria primary key (codigo_livro, mat_autor),
    --FOREIGN KEY Example
    constraint fk_autoria_codigo_livro FOREIGN key (codigo_livro) references livro(codigo),
    constraint fk_autoria_mat_autor FOREIGN key (mat_autor) references autor(matricula)  
)
go
select * from autor
select * from assunto
select * from editora
select * from livro
select * from autoria
