-- Lista de pedidos realizados no fim de semana

SELECT IdTransacao,
       DtCriacao,

       strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS fimSemana

FROM transacoes

WHERE strftime('%w', datetime(substr(DtCriacao, 1, 19))) IN ('0', '6') 