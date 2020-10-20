create database atletas;
use atletas;
create table atletas (
id int primary key,
nome varchar (50),
modalidade varchar (40),
medalhas int
);

insert into atletas values
	(1, 'Hamilton', 'Fórmula1', 157),
    (2, 'Federer', 'Tênis', 102),
    (3, 'Phelps', 'Natação', 28),
    (4, 'Cielo', 'Natação', 19),
    (5, 'Latynina', 'Ginástica', 18),
    (6, 'Paavo', 'Atletismo', 12),
    (7, 'Senna', 'Fórmula1', 80);
    
select * from atletas;
    