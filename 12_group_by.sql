-- SELECT IdProduto,
--        count(*)

-- FROM transacao_produto

-- WHERE IdProduto = 5

-- GROUP BY IdProduto

---------------------------------------------------------------------------

-- Selecione IdCliente, somando a quantidade de pontos e a quantidade de
-- transacoes dele a partir da tabela transacoes. FIltrando a DtCriacao apenas para o mes de julho, agrupando pelo cliente e ordenando pela soma dos pontos.

-- Where filtra no momento que puxa os dados
-- Having filtra depois da agregacao, é o where do group by

SELECT IdCliente, 
       sum(QtdePontos),
       count(IdTransacao)

FROM transacoes

WHERE DtCriacao LIKE '2025-07-%'

GROUP BY IdCliente
HAVING sum(QtdePontos) >= 4000

ORDER BY sum(QtdePontos) DESC

LIMIT 10