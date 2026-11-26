create database gremio
default character set utf8mb4
default collate utf8mb4_unicode_ci;

use gremio;

create table jogadores (
id int auto_increment,
nome varchar(30),
nacionalidade varchar (25) default 'Brasil',
posicao varchar (15),
altura decimal (3,2),
nascimento date,
contrato date,
primary key (id)
)default charset = utf8mb4;

insert into jogadores values
('1', 'Gabriel Grando',	'Brasil',	'Goleiro',	'1.92',	'2000-03-29',	'2026-12-31'),
('2', 'Caíque',	'Brasil',	'Goleiro',	'1.98',	'1997-07-31',	'2027-12-31'),
('3', 'Kannemann',	'Argentina',	'Zagueiro',	'1.84',	'1991-03-14',	'2027-12-31'),
('4', 'Rodrigo Ely',	'Brasil',	'Zagueiro',	'1.88',	'1993-11-03',	'2027-12-31'),
('5', 'Jemerson',	'Brasil',	'Zagueiro',	'1.84',	'1992-08-24',	'2026-12-31'),
('6', 'João Pedro',	'Brasil',	'Lat Direito',	'1.79',	'1996-11-15',	'2027-12-31'),
('7', 'Reinaldo', 'Brasil',	'Lat Esquerdo',	'1.78',	'1989-09-28',	'2026-12-31'),
('8', 'Villasanti',	'Paraguai',	'Volante',	'1.78',	'1997-01-24',	'2027-12-31'),
('9', 'Dodi', 'Brasil',	'Volante',	'1.76',	'1996-04-17',	'2026-12-31'),
('10', 'Cristaldo',	'Argentina',	'Meia',	'1.75',	'1996-08-15',	'2026-12-31'),
('11', 'Monsalve',	'Colômbia',	'Meia',	'1.72',	'2004-02-27',	'2028-12-31'),
('12', 'Soteldo',	'Venezuela',	'Atacante',	'1.60',	'1997-06-30',	'2026-12-31'),
('13', 'Pavón',	'Argentina',	'Atacante',	'1.74',	'1996-01-21',	'2026-12-31'),
('14', 'Aravena', 'Chile',	'Atacante',	'1.74',	'2002-09-06',	'2028-12-31'),
('15', 'Braithwaite',	'Dinamarca',	'Atacante',	'1.77',	'1991-06-05',	'2027-06-30');

select nome, posicao, altura from jogadores
where altura >= '1.80';

select * from jogadores
where nacionalidade not like 'Brasil' and posicao in ('meia', 'atacante');

select nome, nascimento from jogadores
where nascimento between '1990-01-01' and '1999-12-31'
order by nascimento;

select nacionalidade, count(*) from jogadores 
group by nacionalidade
order by count(*) desc;

select avg(altura) from jogadores;

select max(altura) from jogadores;