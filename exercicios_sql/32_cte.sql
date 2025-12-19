--Dentre os clientes de janeiro/2025, quantos assistiram o curso de SQL?

WITH tb_clientes_janeiro_25 AS (

    SELECT DISTINCT IdCliente

    FROM transacoes

    WHERE substr(DtCriacao, 1, 7) = '2025-01'

),

tb_clientes_curso AS (

    SELECT DISTINCT IdCliente AS IdClienteCurso

    FROM transacoes

    WHERE substr(DtCriacao, 1, 10) >= '2025-08-25'
          AND
          substr(DtCriacao, 1, 10) < '2025-08-30'

),

tb_clientes_janeiros_presentes_curso AS (

    SELECT count(t1.IdCliente) AS ClientesJaneiro, 
           count(t2.IdClienteCurso) AS ClientesJaneiroCurso

    FROM tb_clientes_janeiro_25 AS t1

    LEFT JOIN tb_clientes_curso AS t2
    ON t1.IdCliente = t2.IdClienteCurso

)

SELECT * FROM tb_clientes_janeiros_presentes_curso