--01
--select idproduto, nome as Produto, quantest as "Estoque Real", estmin as "Estoque Minimo"
--from produto

--02
--select *, venda-custo as diferenca
--from produto

--03
--select *, venda*1.25 as novoPreco
--from produto

--04
--select distinct c.nome
--from funcionario f join cidade c
--on f.idreside = c.idcidade

--05
--select idproduto, nome, idtipo, custo, venda
--from produto
--order by nome

--06
--select * from funcionario
--where sexo = 'M'
--order by datanasc desc

--07
--select f.nome, s.nome
--from funcionario f join setor s
--on f.idsetor = s.idsetor
--where f.idnasceu in ('7','8','15')
--order by s.nome, f.nome

--08
--select idpais, nome
--from cidade
--where idpais <> 'BRA'

--09
--select *, salario*1.52 as aumento from funcionario
--where sexo = 'F'

--10
--select * from funcionario
--where salario between 1000 and 3000

--11
--select * from produto
--where custo between 20 and 100

--12
--select * from funcionario
--where fone is null

--13
--select * from produto
--where quantest < estmin

--14
--select * from produto
--where (idtipo in ('1','2','3')) and (venda between '10' and '50')

--15
--select * from cliente
--where fax is null

--16
--select * from funcionario
--where datanasc between '1965-12-01' and '1966-03-31'

--17
--select nome, age(datanasc) idade from funcionario
--order by idade, nome

--18
--select c.idcliente from cliente c join pedido p
--on c.idcliente = p.idcliente

--19
--select * from funcionario
--where sexo = 'M' and estcivil = 'C' and salario <= '3000'
--order by nome

--20
--select idproduto, nome, idtipo, venda 
--from produto
--where venda <= '50' and idtipo not in ('1', '3')
--order by nome desc

--21
--select * from funcionario
--where (datanasc between '1965-01-01' and '1966-12-31') and (idnasceu not in ('4','6','10'))
--order by nome

--22
--select nome, venda from produto
--where (descricao like '%chocolate%') and (venda >= '15')
--order by venda desc