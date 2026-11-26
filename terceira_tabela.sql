use cadastro;
insert into cursos values #tudo que tiver em linha é registro e tudo q esta em coluna é campo
('1', 'HTML 5', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014');

update cursos #atualizando a tabela curso
set ano = '2018' #set=configure (pra configurar a coluna ano)
where idcurso= '2'; #where=onde idcurso=2(primary key)

update cursos
set nome = 'HTML 4', ano = '2008'
where idcurso = '1';

update cursos
set descricao = 'Curso de HTML4'
where idcurso = '1';
#usando 'limit numero' é possivel limitar o numero de linhas afetadas

delete from cursos #apagar da tabela cursos um registro
where idcurso='1';
#é possivel usar o limit e deletar de varias linhas tb, se quiser tem q desligar o safeupdate

truncate table cursos; #apagar todos os registros

#drop table apaga a estrutura toda e o truncate apaga somente os registros