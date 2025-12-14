-- Qual o produto com mais pontos transacionados

SELECT IdProduto,
       sum(vlProduto) AS PontosTransacionados

FROM transacao_produto

GROUP BY IdProduto
ORDER BY 2 DESC

LIMIT 1