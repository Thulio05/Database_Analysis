-- Estrutura para inner Join (Juntar e relacionar duas tabelas), Chave Primária e Estrangeira:

-- SELECT
-- 	Tabela_A.coluna1,
-- 	Tabela_A.coluna2,
-- 	Tabela_A.coluna3,
-- 	Tabela_B.coluna4
-- FROM TabelaA
-- INNER JOIN Tabela_B
-- 	ON Tabela_A.id_chave_ estrangeira = Tabela_B.id_chave_primaria

-- Exemplo: Fazer uma consulta que tem como resultado todas as colunas da tabela de pedidos e as colunas Loja, Gerente e Telefone:

SELECT * FROM pedidos;
SELECT * FROM lojas;

SELECT
	pedidos.*,
    lojas.Loja,
    lojas.Gerente,
    lojas.Telefone
FROM pedidos
Inner Join lojas
	On pedidos.ID_Loja = lojas.ID_Loja;
