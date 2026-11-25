create table if not exists cursos ( #cria a tabela caso ela nao exista
nome varchar(30) not null unique, #nao pode ser nulo e nao deixa dois cursos com o mesmo nome
descricao text, #textos longos
carga int unsigned, #unsigned bloqueia valores negativos
totaulas int unsigned, 
ano year default '2026' #se nao tiver ano cadastrado, ele vai tomar por padrão o ano de 2026
) default charset = utf8mb4;

alter table cursos
add column idcurso int first; #adicionando idcurso como primeiro campo da tabela

alter table cursos
add primary key(idcurso); #adicionando primary key para o campo idcurso

drop table if exists cursos; #excluindo a tabela se ela existir