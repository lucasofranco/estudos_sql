-- Quantos clientes mais perderam pontos por Lover?

SELECT t3.IdCliente, sum(t3.QtdePontos) AS QtdePontosGastos,
       sum(t1.QtdeProduto) AS QtdeProdutosComprados,
       t2.DescCategoriaProduto AS CategoriaProduto

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

LEFT JOIN transacoes AS t3
ON t1.IdTransacao = t3.IdTransacao

WHERE DescCategoriaProduto = 'lovers'

GROUP BY IdCliente

ORDER BY sum(t3.QtdePontos)

LIMIT 5