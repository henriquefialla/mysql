use cadastro; 
describe moradores;

alter table moradores add cursopreferido int;

alter table moradores
add foreign key (cursopreferido) #adicionando chave estrangeira com o nome "curso preferido"
references cursos(idcurso); #identificando q esse é o valor de referencia pra chave estrangeira, ent o campo "curso preferido" sera do mesmo tipo do idcurso q pertencia a outra tabela

select * from moradores;
select * from cursos;

update moradores set cursopreferido = '4' where id = '2'; #vai fazer com q o id 2 na tabela moradores tenha o curso 4 como preferido

#se quiser dar update em varios, é só editar na tabela direto q fica mais facil e apertar o apply

#uma chave estrangeira bloqueia a funçao delete caso o campo tenha um relacionamento, caso nao tenha relacionamento ele apaga normalmente

select moradores.nome, moradores.cursopreferido, cursos.nome, cursos.ano
from moradores join cursos #juntando
on cursos.idcurso = moradores.cursopreferido; #sempre usar on quando usar join para nao ficar bagunçado

select moradores.nome, moradores.cursopreferido, cursos.nome, cursos.ano
from moradores left join cursos  #mostrou todos os alunos msm q nao tenha um curso preferido, e vc pode fazer tanto do lado direito quanto do esquerdo
on cursos.idcurso = moradores.cursopreferido; 

select moradores.nome, moradores.cursopreferido, cursos.nome, cursos.ano
from moradores right join cursos #do lado direito agr
on cursos.idcurso = moradores.cursopreferido; 





