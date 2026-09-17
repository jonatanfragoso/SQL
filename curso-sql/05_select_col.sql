SELECT idCliente,
QtdePontos,
QtdePontos + 10 AS QtdePontosMais10,
QtdePontos *2 AS QtdePontosX2,
DtCriacao,
datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoMod,
strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana

FROM clientes