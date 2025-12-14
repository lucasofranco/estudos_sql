-- Qual produto mais transacionado?

SELECT IdProduto,
       count(IdTransacao) AS QtdeProduto

FROM transacao_produto

GROUP BY IdProduto

ORDER BY 2 DESC

LIMIT 1