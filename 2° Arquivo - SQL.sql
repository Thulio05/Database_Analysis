-- Filtros no SQL (WHERE)
-- 1. Mostrar apenas os produtos com preços iguais ou maiores a R$1.800,00:
select * from produtos
where Preco_Unit >= 1800
order by Preco_Unit;

-- 2. Mostrar apenas os produtos com preços iguais R$3.100,00:
select * from produtos
where Preco_Unit = 3100
order by Custo_Unit;

-- 3. Mostrar os produtos da marca Dell:
select * from produtos
where Marca_Produto = 'DELL'
order by Preco_Unit;

-- 4. Mostrar apenas os pedidos feitos no dia 03/01/2019:
select * from pedidos
where Data_Venda = '2019-01-03'
order by Custo_Unit;

-- 5. Mostrar apenas clientes do sexo masculino e solteiros:
select * from clientes
where Sexo = 'M' and Estado_Civil = 'S'
order by Data_Nascimento desc;

-- 6. Mostrar os produtos da marca Dell ou Samsumg:
select * from produtos
where Marca_Produto = 'DELL' or Marca_Produto = 'SAMSUNG'
order by Preco_Unit;