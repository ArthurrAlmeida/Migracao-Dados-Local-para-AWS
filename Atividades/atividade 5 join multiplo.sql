/* Descrição: Liste o nome do cliente, o veículo comprado e o valor pago, para todas as vendas. */

select cl.cliente, v.nome as veiculo, vd.valor_pago from vendas vd
join clientes cl on vd.id_clientes = cl.id_clientes
join veiculos v on vd.id_veiculos = v.id_veiculos;