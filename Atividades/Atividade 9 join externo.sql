/* Descrição: Liste todas as cidades e qualquer concessionária nelas, se houver. */

select c.cidade, con.concessionaria from cidades c
left join concessionarias con on c.id_cidades = con.id_cidades;