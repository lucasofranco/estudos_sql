-- SELECT idCliente, qtdePontos
-- FROM clientes
-- ORDER BY qtdePontos DESC 
-- LIMIT 10;

SELECT IdCliente, qtdePontos, DtCriacao, flTwitch

FROM clientes

WHERE flTwitch = 1

ORDER BY DtCriacao ASC, qtdePontos DESC

LIMIT 10;