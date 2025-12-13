-- SELECT 
--     count(*),
--     count(IdCliente),
--     count(DtCriacao)

-- FROM clientes;

SELECT count(DISTINCT IdCliente)

FROM clientes;