create database cadastro #criando o banco de dados
default character set utf8mb4
default collate utf8mb4_unicode_ci; #padronizando os caracteres permitidos na tabela

use cadastro; #usando o banco de dados

create table pessoas ( #criando a tabela
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8mb4;

insert into pessoas values #inserindo valores na tabela
(default,'João', '1983-09-07', 'M', '78.5', '1.80', 'Brasil'),
(default,'Maria', '2001-03-21', 'F', '57.5', '1.59', 'Japão'),
(default,'Vladimir', '1975-12-01', 'M', '89.0', '1.87', 'Russia'),
(default,'Klaus', '1985-02-25', 'M', '97.5', '1.95', 'Alemanha'),
(default,'Felipe', '1990-11-03', 'M', '65.2', '1.83', 'Italia');

select * from pessoas;

alter table pessoas #alterando a tabela
add column profissao varchar (10) after nome; #adicionando a coluna profissao com 10 caracteres de limite e fazendo aparecer dps do campo nome

alter table pessoas
add column codigo int first; #adicionando a coluna codigo e colocando pra aparecer como primeiro campo na tabela

alter table pessoas
drop column profissao; #excluindo a coluna profissao

alter table pessoas
modify column profissao varchar(20); #modificando a coluna profissao para permitir 20 caracteres

alter table pessoas
change column profissao prof varchar(20); #mudando o nome da coluna profissao para prof e permitindo 20 caracteres

alter table pessoas
rename to moradores; #renomeando a tabela

select * from pessoas
