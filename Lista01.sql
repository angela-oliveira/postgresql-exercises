--01
-- SELECT * from livro_autor where isbn = '9788575224229'

--02
--select li.titulo from livro li inner join editora ed on ed.codeditora = li.editora where ed.nome = 'Novatec'

--03
--select li.titulo, count(ex.codexemplar) quant from livro li inner join exemplar ex on li.isbn = ex.isbn group by li.titulo order by li.titulo

--04
--select us.nome, li.titulo from usuario us join emprestimo em
--on us.codusuario = em.codusuario join exemplar ex
--on em.codexemplar = ex.codexemplar join livro li
--on ex.isbn = li.isbn
--where us.nome like 'Alex%'

--05
--select li.titulo, count(ex.disponivel) quant
--from livro li inner join exemplar ex on li.isbn = ex.isbn
--where ex.disponivel = 'S'
--group by li.titulo

--06
--select li.titulo, count(em.codexemplar) quant
--from livro li inner join exemplar ex on li.isbn = ex.isbn join emprestimo em 
--on ex.codexemplar = em.codexemplar
--group by li.titulo
--order by quant desc
--limit 5

--07
--select li.titulo as "livro do mes"
--from livro li inner join exemplar ex on li.isbn = ex.isbn inner join emprestimo em
--on ex.codexemplar = em.codexemplar
--where dataemprestimo between '2019/04/01' and '2019/04/30'

--08
--select li.titulo, count(ex.codexemplar) quant
--from livro li inner join exemplar ex on li.isbn = ex.isbn inner join emprestimo em
--on ex.codexemplar = em.codexemplar
--where dataemprestimo between '2019/04/01' and '2019/04/30'
--group by li.titulo

--09
--select distinct * from editora

--10
--select titulo, isbn, ano from livro
--where ano = '2010' or ano = '2012' or ano = '2014'
--order by editora

--11
--select us.nome 
--from usuario us left join emprestimo em
--on us.codusuario = em.codusuario
--where em.codusuario is null

--12
--select us.nome, sum(mu.valor) quant
--from usuario us join emprestimo em
--on us.codusuario = em.codusuario join multa mu
--on em.numemprestimo = mu.numemprestimo
--group by us.nome
--order by quant desc

--13
--select titulo from livro
--where titulo like '%MongoDB%' or titulo like '%Banco de Dados%'

--14
--select titulo from livro
--where isbn in ('9788582600481')

--15
--select li.titulo, us.nome, em.dataemprestimo, em datadevolucao
--from livro li join exemplar ex
--on li.isbn = ex.isbn join emprestimo em
--on ex.codexemplar = em.codexemplar join usuario us
--on em.codusuario = us.codusuario
--where em.devolvido = 'N'
