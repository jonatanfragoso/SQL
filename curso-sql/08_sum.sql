SELECT
    sum(QtdePontos),

    sum(CASE
        WHEN QtdePontos > 0 THEN QtdePontos
        END) AS QtdePontosPositivos,
    count(CASE
        WHEN QtdePontos > 0 THEN QtdePontos
        END) AS QtdeTransacoesPositivas,

    sum(CASE 
        WHEN QtdePontos < 0 THEN QtdePontos
        END) as QtdePontosNegativos,
    
    count(CASE 
        WHEN QtdePontos < 0 THEN QtdePontos
        END) as QtdeTransacoesNegativas

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-8-01'
