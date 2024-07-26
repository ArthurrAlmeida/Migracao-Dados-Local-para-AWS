/* Descrição: Identifique as concessionárias que venderam mais de 5 veículos. */

select id_concessionarias, COUNT(*) as total_vendas from vendas
group by id_concessionarias
having count(*) > 5;