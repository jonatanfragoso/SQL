--Selecionar todos os clientes com email cadastrado
SELECT *
FROM clientes
WHERE flEmail = 1;

-- Selecionar todas as transações de 50 pontos (exatos)
SELECT *
FROM transacoes
WHERE QtdePontos == 50;

--Selecionar todos os clientes com mais de 500 pontos
SELECT *
FROM clientes
WHERE QtdePontos > 500;

--Selecionar produtos que contêm 'churn' no nome
SELECT *
FROM produtos
WHERE DescNomeProduto LIKE 'churn%';