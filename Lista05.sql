--01
--select f.film_id, f.title
--from film f left join inventory i
--on f.film_id = i.film_id
--where i.film_id is null
--order by f.title

--02
--select c.customer_id, c.first_name, sum(p.amount) locacoes
--from customer c join payment p
--on c.customer_id = p.customer_id
--group by c.customer_id
--order by locacoes desc

--03
--select c.customer_id, c.first_name, sum(p.amount) locacoes
--from customer c join payment p
--on c.customer_id = p.customer_id
--group by c.customer_id
--having sum(p.amount) > '200'
--order by locacoes desc

--04
--select s.first_name, count(p.payment_id) quant
--from staff s join payment p
--on s.staff_id = p.staff_id
--group by s.first_name

--05
--select s.store_id, count(c.customer_id) quant
--from store s join customer c
--on s.store_id = c.store_id
--group by s.store_id

--06
--select s.store_id, count(c.customer_id) quant
--from store s join customer c
--on s.store_id = c.store_id
--group by s.store_id
--having count(c.customer_id) > '300'

--07
--select film_id, title, rental_rate
--from film
--where rental_rate > (select avg(rental_rate)from film)

--08
--select f.film_id
--from film f join inventory i
--on f.film_id = i.film_id join rental r
--on i.inventory_id = r.inventory_id
--where r.return_date between '2005-05-29' and '2005-05-30'

--select film_id from film
--where exists(select return_date from rental where between '2005-05-29' and '2005-05-30')

--09
--select f.film_id, f.title
--from film f join inventory i 
--on f.film_id = i.film_id join rental r
--on i.inventory_id = r.inventory_id
--where r.return_date between '2005-05-29' and '2005-05-30'

--10
--select c.first_name ||' '|| c.last_name
--from customer c join rental r
--on c.customer_id = r.customer_id

--11
--select ca.name, count(fc.film_id) quant
--from category ca join film_category fc
--on ca.category_id = fc.category_id
--group by ca.name
--order by quant desc
--limit 5

--12
--select f.film_id, f.title, i.inventory_id
--from film f join inventory i
--on f.film_id = i.film_id

--13
--select * from customer
--where email is null

--15
--select l.name, count(f.film_id) quant
--from language l join film f
--on l.language_id = f.language_id
--group by l.name


--16
--select date_part('month', payment_date) mes, sum(amount) faturamento
--from payment
--group by date_part('month', payment_date)
select date_part('month',payment_date),sum(amount) 
from payment 
where date_part('year',payment_date) = 2007 
group by date_part 
having sum(amount) = (select max(tot) 
					  from (select date_part('month',payment_date), sum(amount) tot 
							from payment 
							group by date_part) pay)

--20
--select st.store_id, count(sf.staff_id)
--from store st join staff sf
--on st.store_id = sf.store_id
--group by st.store_id
--having count(sf.staff_id) > 5

--23
--select f.title, c.category_id
--from film f join film_category fc
--on f.film_id = fc.film_id join category c
--on fc.category_id = c.category_id
--where c.name like 'Drama' or c.name like 'Action'


--select f.title, count(r.rental_id) quant
--from film f join inventory i
--on f.film_id = i.film_id join rental r
--on i.inventory_id = r.inventory_id
--group by f.title
--order by quant desc
--limit 10
