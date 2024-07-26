/* Descrição: Encontre os veículos mais caros vendidos em cada tipo de veículo. */

select tipo, max(valor) as valor_maximo from veiculos
group by tipo;