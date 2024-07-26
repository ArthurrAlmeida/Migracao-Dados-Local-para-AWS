# Bootcamp Data Engineer

<p> Este projeto foi uma participação no bootcamp para engenheiros de dados do professor Fernando Amaral e aqui irei compartilhar meus aprendizados, as formas estratégias usadas foram ELT incremental update. </p>

<h2> Este projeto utilizou das seguintes ferramentas </h2>

#### Banco de Dados: Postgres
#### Orquestração: Apache Airflow
#### Nuvem: AWS EC2
#### DatawareHouse: Snowflake
#### Transformação: dbt
#### Visualização: Looker Studio

<h2> Sobre as pastas e Arquivos </h2>

#### - Airflow
<p> Pasta com o código da DAG usada para a criação da pipelines de carga de dados do projeto. </p>

#### - Atividades
<p> Pasta com o código das atividades em SQL Postgres do bootcamp. </p>

#### - dbt
<p> Pasta com o código usado na transformação dos dados no dbt para subir no DW. </p>

<h2> Desenho do projeto </h2>

![Modelagem do Projeto](https://github.com/user-attachments/assets/bf8ec021-2a3b-4ede-9986-a5b925fa1890)

<h3> Explicação do projeto. </h3>
<p> O projeto se inicia com a conexão do Banco de Dados da empresa em local host, depois da conexão é criado uma instancia EC2, instalado o Apache Airflow e o Postgres nessa instância, feito as conexões do Banco de Dados da empresa no EC2, feito conexão do Snowflake e e Postgres no Apache Airflow, criada a Dag usando python para fazer a carga no DW, depois que os dados estão presentes no Snowflake criamos a conexão entre ele e o dbt para transformar os dados dentro da Stage, subir para a dimensão e depois para a fato e depois criamos as regras de negocio para melhor visualização dos dados, isso tudo no dbt passando para o Snowflake. Depois de criados foi feito a conexão do DW com o Looker Studio para visualização dos dados. </p>


<h2> Desenho do DW </h2>

![Docs Generate](https://github.com/user-attachments/assets/c696301d-4f56-47f5-bef2-ed2bea92eaed)

<h3> Nomenclaturas: </h3>

<h5> - Sources: Arquivos originais, extraídos do BD do cliente. </h5>
<h5> - STG: Stage área, onde os dados foram tratados. </h5>
<h5> - DIM: Tabela Dimensão, onde os dados foram carregados. </h5>
<h5> - FCT: Tabelas Fato, onde os principais dados foram carregados. </h5>
<h5> - Analise: Regras de Negocio. </h5>
<h5> - Test: Testes para garantir integridade dos dados. </h5>


<h6> OBS: por razões financeiras a instância do EC2 foi excluída, porém toda a documentação está presente aqui. </h6>
