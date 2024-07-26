/* Descrição: Liste os três veículos mais caros disponíveis. */

select nome, valor from veiculos
group by valor desc
limit 3;