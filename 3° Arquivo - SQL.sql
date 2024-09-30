-- language: sql
select * from clientes;

-- 1. Mostrar a quantidade de nomes na tabela:

select COUNT(Nome)
from clientes;

-- 2. Mostrar a quantidade de números na tabela:

select COUNT(Telefone)
from clientes;

-- 3. Mostrar a quantidade distintas de escolaridade:

select COUNT(DISTINCT Escolaridade)
from clientes;

-- 4. Mostrar a soma, média, máximo e mínimo, respectivamente, da receita:

select 
	SUM(Receita_Venda) as 'Soma da receita',
	AVG(Receita_Venda) as 'Média da receita',
    MIN(Receita_Venda) as 'Mínimo da receita',
    MAX(Receita_Venda) as 'Máximo da receita'
from pedidos;
