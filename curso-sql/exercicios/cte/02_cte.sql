-- Quem iniciou o curso no primeiro dia, em média assitiu quantas aulas?

WITH tb_primeiro_dia AS (
    SELECT *
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

tb_dias_curso AS (
    SELECT DISTINCT idCliente, substr(DtCriacao,1 ,10) AS presenteDia
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND  DtCriacao < '2025-08-30'
    ORDER BY idCliente, presenteDia
),

tb_cliente_dias as (

    SELECT t1.idCliente,
    count(DISTINCT t2.presenteDia) as qtdeDias
    FROM tb_primeiro_dia AS t1
    LEFT JOIN tb_dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente
    GROUP BY t1.idCliente
)

SELECT avg(qtdeDias) FROM tb_cliente_dias