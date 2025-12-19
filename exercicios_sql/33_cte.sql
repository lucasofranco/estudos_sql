-- Qual o dia com maior engajamento de cada aluno que iniciou o curso no dia 01?

WITH tb_clientes_prim_dia AS (

    SELECT DISTINCT (IdCliente)

    FROM transacoes

    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'

),

tb_clientes_curso AS (

    SELECT IdCliente AS idClientesCurso, 
           IdTransacao,
           DtCriacao

    FROM transacoes

    WHERE substr(DtCriacao, 1, 10) >= '2025-08-25'
          AND
          substr(DtCriacao, 1, 10) <= '2025-08-29'

),

tb_clientes_prim_dia_trans AS (

    SELECT t1.IdCliente,
        substr(t2.DtCriacao, 1, 10) AS DtCriacao,
        count(t2.IdTransacao) AS qtdeTransacoes

    FROM tb_clientes_prim_dia AS t1

    LEFT JOIN tb_clientes_curso AS t2
    ON t1.IdCliente = t2.idClientesCurso

    GROUP BY t1.IdCliente, substr(t2.DtCriacao, 1, 10)

    ORDER BY count(t2.IdTransacao) DESC

),

tb_qtde_transacoes_clientes AS (

    SELECT *,
           row_number() OVER (PARTITION BY IdCliente ORDER BY qtdeTransacoes DESC, DtCriacao) AS rn
    FROM tb_clientes_prim_dia_trans

)

SELECT * FROM tb_qtde_transacoes_clientes
WHERE rn = 1
