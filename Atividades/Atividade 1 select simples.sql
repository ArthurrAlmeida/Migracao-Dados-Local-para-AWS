/* Descrição: Liste todos os veículos com tipo 'SUV Compacta' e valor inferior a 30.000,00. */

select nome, tipo, valor from veiculos
where tipo = 'SUV Compacta'
and valor < 30000.00;