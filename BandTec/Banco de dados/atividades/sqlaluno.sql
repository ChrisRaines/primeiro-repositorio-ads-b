create database aluno;
use aluno;
-- isso é um comentário
-- criação da tabela aluno
create table aluno (
ra int primary key,  -- ra é chave primaria da tabela aluno
nome varchar(50),
bairro varchar(40)
);
select * from aluno;
select ra from aluno;
select nome from aluno;
insert into aluno values (01202023, 'Lais', 'Umuarama');
insert into aluno values (01202086, 'Luiz', 'Jardim Primavera'),
						 (01202093, 'Luis Fernando Rocha', 'Jd Iracema'),
                         (01202003, 'Caio', 'Taboão');
select * from aluno  order by bairro;
select * from aluno order by nome;
select * from aluno order by ra;
-- aluno que começa com a letra L
select * from aluno where nome like 'L%';
select * from aluno;
select * from aluno where nome like '%O';
select * from aluno where nome like '_U%';
select * from aluno where nome like '%M_';
select * from aluno where nome like '__i%';
-- mudar o bairro de um aluno
update aluno set bairro = 'Campanario' where ra = 1202003;
 -- excluir um aluno
delete from aluno where ra = 1202093;