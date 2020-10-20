create database Revista;
use Revista;
create table revistas (
idRevista int primary key auto_increment,
nome varchar (40),
categoria varchar (30)
);
insert into revistas values (null, 'Racing', 'Corrida'),
						    (null, 'Arkade', 'Jogos'),
							(null, 'Rolling Stones', 'Música'),
                            (null, 'Forbes', 'economia');
                           
select * from revistas;

update revistas set categoria = 'Noticias' where idRevista = 2;
update revistas set categoria = 'esportes' where idRevista = 1;
update revistas set categoria = 'gastronomia' where idRevista = 3;

insert revistas (nome, categoria) values ('atame', 'artes marciais'),
										 ('Vogue', 'moda'),
                                         ('Billboard', 'música');
select * from revistas;

alter table revistas modify categoria varchar(40);
describe revistas;
 
 
 alter table revistas add periodicidade varchar(15);
 select * from revistas;
 
 alter table revistas drop periodicidade;
 select * from revistas;
                       
create table editora (
idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFund date 
) auto_increment = 1000;

insert into editora (nomeEditora, dataFund) values ('Racing', '2015-03-08'),
												   ('Arkade', '1999-05-10'),
						                           ('Rolling Stones', '1970-02-07'),
						                           ('Forbes', '1980-06-09');
select * from editora;

alter table revistas add fkEditora int;
alter table revistas add foreign key (fkeditora) references editora(idEditora);

select revistas.*, nomeeditora, datafund from revistas, editora where fkeditora = ideditora;



update revistas set fkeditora = 1001 where idrevista in (3,2,1);
  update revistas set fkeditora = 1000 where idrevista in (4,7);
  update revistas set fkeditora = 1002 where idrevista = 5;
  update revistas set fkeditora = 1003 where idrevista = 6;
  
  select * from revistas, editora where fkeditora = ideditora and nomeeditora = 'Arkade';

