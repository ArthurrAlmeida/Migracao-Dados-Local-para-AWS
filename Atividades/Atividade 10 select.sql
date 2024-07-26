/* Descrição: Encontre clientes que compraram veículos 'SUV Premium Híbrida' ou veículos com valor acima de 60.000,00. */

select cl.cliente, v.nome as veiculo, v.valor from vendas vd
join veiculos v on vd.id_veiculos = v.id_veiculos
join clientes cl on vd.id_clientes = cl.id_clientes
where v.tipo = 'SUV Premium Híbrida' or v.valor > 60000.00;