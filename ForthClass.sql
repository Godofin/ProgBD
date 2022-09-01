-- Add new attribute in a table
select * from funcionario
alter table funcionario add rg char(9) -- add new column
alter table funcionario  alter COLUMN rg char(9) not null -- update a column
alter table funcionario drop COLUMN rg  -- remove column
alter table funcionario alter column nome varchar(100) not null -- alter data type
alter table dependente drop CONSTRAINT fk_dependente_funcionario -- delete constraints
alter table funcionario add CONSTRAINT fk_funcionario_salario check(salario>=1500) -- add new constraints
alter table projeto nocheck constraint fk_projeto_funcionario -- disable a constraint

