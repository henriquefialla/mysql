use cadastro; 

create table moradores_assiste_curso ( #tabela do meio q conecta na relacao de muitos pra muitos
id int not null auto_increment,
data date,
idmorador int,
idcurso int,
primary key (id),
foreign key (idmorador) references moradores(id),
foreign key (idcurso) references cursos(idcurso)
) default charset=utf8mb4;

insert into moradores_assiste_curso values
(default, '2019-08-21', '1', '2');

select * from moradores m #agr aparece o nome do morador porem ainda aparece apenas o codigo do curso
join moradores_assiste_curso a
on m.id = a.idmorador
join cursos c #agr ele aparece os dados completos do morador e do curso favorito, isso q acabou de acontecer foi a relaçao de muito pra muitos e minhas duas antigas chaves primarias viraram chaves estrangeiras
on a.idcurso = c.idcurso;
