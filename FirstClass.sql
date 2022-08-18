-- First Class - Remember soft concepts
create database bdLavezzo;

create table employee (
    codeId int not null IDENTITY(1,1) ,
    nameEmployee varchar(300) not null, 
    email varchar(300) not null,
    constraint PK_Employee primary key(codeId)
)

select * from employee

