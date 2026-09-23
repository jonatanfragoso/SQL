-- Quais clientes assinarem a lista de presença no dia 25/08/2025?

SELECT  t1.idCliente, count(*)

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE substr(t1.DtCriacao, 1, 10) = '2025-08-25'
AND t3.DescNomeProduto = 'Lista de presença'

GROUP BY t1.idCliente