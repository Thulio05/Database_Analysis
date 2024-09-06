-- Exercício 1: Selecionando todas as linhas e colunas da:
-- Tabela de Categorias:
SELECT * FROM categorias;
-- Tabela de Clientes:
SELECT * FROM clientes;
-- Tabela de Locais:
SELECT * FROM locais;
-- Tabela de Lojas:
SELECT * FROM lojas;
-- Tabela de Pedidos:
SELECT * FROM pedidos;
-- Tabela de Produtos:
SELECT * FROM produtos;

-- Exemplo 2: Selecionar apenas algumas colunas da tabela de cliente:
SELECT 
	ID_Cliente as 'Id do Cliente', 
    Nome, 
    Data_Nascimento 'Data de Nascimento', 
    Email
FROM clientes;

-- Exemplo 3: Selecionar apenas as 5 primeiras linhas da tabela de produtos:
SELECT * FROM produtos
LIMIT 5;

-- Exemplo 4: Selecionar todas as linhas da tabela produtos ordenado pela tabela de preços:
SELECT * FROM produtos
ORDER BY Preco_Unit;
