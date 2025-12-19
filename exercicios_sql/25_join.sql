-- Qual mês teve mais lista de presença assinada?

SELECT t3.DescNomeProduto,
       t2.IdProduto,
       strftime('%m', substr(t1.DtCriacao, 1, 10)) AS DtCriacaoMes,
       count(t1.IdTransacao) AS QtdeTransacoes

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescNomeProduto IN ('Lista de presença')

GROUP BY 3

ORDER BY 4 DESC