SELECT IdTransacao,
DtCriacao,

strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana

FROM transacoes

WHERE DiaSemana IN ('0','6')

--MESMA COISA
--WHERE strftime('%w', datetime(substr(DtCriacao, 1, 19))) IN ('0','6')
--WHERE DiaSemana '0'
--OR DiaSemana = '6'