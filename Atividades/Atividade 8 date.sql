/* Descrição: Selecione todos os veículos adicionados no último mês. */

select nome, data_inclusao from veiculos
where data_inclusao > CURRENT_TIMESTAMP - INTERVAL '1 month';