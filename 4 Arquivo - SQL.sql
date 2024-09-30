-- language: sql
select * from clientes;

SELECT
	sexo,
    count(*) as 'Qtd. Clientes'
from clientes
group by sexo;

-- Exemplo 1: Ultizar Group By para criar uma consulta e descobrir o total de clientes por sexo:

select
	sexo,
    count(*) as 'Total de clientes'
from clientes
group by sexo;

-- Exemplo 2: Ultizar Group By para criar uma consulta da tabela de Produtos e descobrir o total de produtos por marca:

select
	Marca_Produto,
    count(*) as 'Total de produtos por marca'
from produtos
group by Marca_Produto;

-- Exemplo 3: Ultizar Group By para criar uma consulta da tabela de Pedidos e descobrir a rceita total e o custo pelo Id da Loja:

select
	ID_Loja,
    sum(Receita_Venda) as 'Receita Total',
    sum(Custo_Venda) as 'Custo Total',
    sum(Receita_Venda) - sum(Custo_Venda) as 'Lucro Final'
from pedidos
group by ID_Loja;

-- Bônus: Seleciar a loja com o maior lucro da empresa:

SELECT 
    ID_Loja, 
    SUM(Receita_Venda) - SUM(Custo_Venda) AS 'Lucro'
FROM 
    pedidos
GROUP BY 
    ID_Loja
ORDER BY 
    Lucro DESC
LIMIT 1;
