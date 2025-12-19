-- Quem iniciou o curso no primeiro dia, em média assistiu quantas aulas?

-- quem estava presente no primeiro dia
WITH tb_prim_dia AS (

    SELECT DISTINCT IdCliente 
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

-- quem estava presente em todos os dias do curso
tb_dias_curso AS (

    SELECT DISTINCT 
           IdCliente,
           substr(DtCriacao, 1, 10) AS presenteDia
    FROM transacoes

    WHERE dtCriacao >= '2025-08-25'
          AND
          dtCriacao < '2025-08-30'

    ORDER BY idCliente, presenteDia

),

-- contando quantas pessoas que estavam no primeiro dia, voltou
tb_clientes_dias AS (

    SELECT t1.IdCliente,
        count(t2.presenteDia) AS qtdeDiasPresentes

    FROM tb_prim_dia AS t1

    LEFT JOIN tb_dias_curso AS T2
    ON t1.IdCliente = t2.IdCliente

    GROUP BY t1.IdCliente

)

-- calcula a media
SELECT avg(qtdeDiasPresentes)
FROM tb_clientes_dias