WITH tb_cliente_dia AS (

    SELECT IdCliente,
        substr(DtCriacao, 1, 10) AS dtDia,
        count(IdTransacao) AS qtdeTransacoes

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
          AND
          DtCriacao < '2025-08-30'

    GROUP BY IdCliente, substr(DtCriacao, 1, 10)

),

tb_lag AS (

    SELECT *,
        sum(qtdeTransacoes) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS acum,
        lag(qtdeTransacoes) OVER (PARTITION BY IdCliente ORDER BY dtDIa) AS lagTransacao

    FROM tb_cliente_dia

)

SELECT *,
       1. * qtdeTransacoes / lagTransacao

FROM tb_lag