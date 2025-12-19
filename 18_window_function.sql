WITH tb_sumario_dias AS (

    SELECT substr(DtCriacao, 1, 10) AS DtDia,
        count(IdTransacao) AS qtdeTransacao

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
          AND
          DtCriacao < '2025-08-30'

    GROUP BY substr(DtCriacao, 1, 10)

)

SELECT *, 
       sum(qtdeTransacao) OVER (ORDER BY DtDia)

FROM tb_sumario_dias