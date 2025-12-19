-- Em 2024 quantas transações de Lovers tivemos?

SELECT DISTINCT(t3.DescCategoriaProduto),
       count(t1.IdTransacao) AS QtdeTransacoes
       
FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2024-01'
      AND
      t1.DtCriacao < '2025-01'
      AND
      t3.DescCategoriaProduto = 'lovers'