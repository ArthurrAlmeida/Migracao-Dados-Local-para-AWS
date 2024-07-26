/* Descrição: Conte quantos vendedores existem em cada concessionária. */

select id_concessionarias, count(*) as numero_vendedores from vendedores
group by id_concessionarias;