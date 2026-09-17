SELECT IdCliente, DtCriacao, QtdePontos, flTwitch

FROM clientes
WHERE flTwitch = 1
ORDER BY DtCriacao ASC, qtdePontos DESC
LIMIT 20