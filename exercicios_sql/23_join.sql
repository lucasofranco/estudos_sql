-- Qual a categoria de produtos mais vendido?

SELECT t1.IdProduto, 
       sum(t1.QtdeProduto) AS TotalVendas,
       t2.DescNomeProduto AS NomeProduto

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IDProduto

GROUP BY t1.IdProduto

ORDER BY 2 DESC

LIMIT 1