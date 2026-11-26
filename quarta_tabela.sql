use cadastro; 
select carga, count(*) from cursos
group by carga; #os cursos são agrupados e mostra quantos cursos tem determinada carga

select carga, count(*) from cursos
group by carga
having count(carga) >30; #só pode ser com o msm grupo q vc agrupou


