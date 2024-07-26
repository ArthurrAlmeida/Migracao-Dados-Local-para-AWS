/* Descrição: Exiba o nome dos clientes e o nome das concessionárias onde realizaram suas compras. */

select cli.cliente, con.concessionaria
from clientes as cli
join concessionarias con on con.id_concessionarias = cli.id_concessionarias
join vendas v on v.id_clientes = cli.id_clientes
group by cli.cliente, con.concessionaria
limit 100