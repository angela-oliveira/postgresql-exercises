--04
SELECT quant "Quantidade de mulheres",media Média,nome "Nome do setor" 
from (select se.nome,avg(salario) Media,count(sexo) quant 
	  from funcionario funci inner join setor se on funci.idsetor = se.idsetor 
	  group by se.nome,sexo having sexo = 'F') as funci 
	  where quant = (SELECT max(tot) total 
					 from (select sexo,idsetor,count(idsetor) as tot 
						   from funcionario 
						   where sexo = 'F' 
						   group By sexo,idsetor) totsub )