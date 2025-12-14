-- Qual cliente fez mais transacoes no ano de 2024?

SELECT IdCliente, 
       count(IdTransacao) AS QtdeTransacoes

FROM transacoes

WHERE DtCriacao < '2025-01'
      AND
      DtCriacao >= '2024-01'

GROUP BY IdCliente

ORDER BY count(IdTransacao) DESC

LIMIT 1