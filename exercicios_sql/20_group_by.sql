-- Qual dia da semana tem mais pedidos em 2025

SELECT count(IdTransacao) AS QtdePedidos,

       CASE
           WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '0' THEN 'Domingo'
           WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '1' THEN 'Segunda-feira'
           WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '2' THEN 'Terça-feira'
           WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '3' THEN 'Quarta-feira'
           WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '4' THEN 'Quinta-feira'
           WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '5' THEN 'Sexta-feira'
           WHEN strftime('%w', substr(DtCriacao, 1, 10)) = '6' THEN 'Sábado'
       END AS DiaSemana

FROM transacoes

WHERE DtCriacao >= '2025-01'
      AND
      DtCriacao < '2026-01'

GROUP BY strftime('%w', substr(DtCriacao, 1, 10))

ORDER BY 1 DESC