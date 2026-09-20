SELECT IdTransacao, qtdePontos,
CASE
WHEN qtdePontos < 10 THEN 'baixo'
WHEN qtdePontos < 500 THEN 'médio'
ELSE 'alto'
END AS Categoria

FROM transacoes
