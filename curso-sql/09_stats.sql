SELECT 
    round(avg(qtdePontos), 2) AS mediaPontos,
    round(1. * sum(qtdePontos) / count(idCliente), 2) AS mediaPontosCalc,
    min(qtdePontos) as minCarteira,
    max(qtdePontos) as maxCarteira,
    sum(flTwitch),
    sum(flEmail),
    count(CASE
        WHEN flTwitch = 1 THEN flTwitch END) 
        AS somaFlTwitch,
    count(CASE
        WHEN flEmail = 1 THEN flEmail END) 
        AS somaFlEmail,
    count(*) FILTER (WHERE flTwitch = 1) AS somaFlTwitch2,
    count(*) FILTER (WHERE flEmail = 1) AS somaFlEmail2


FROM clientes

