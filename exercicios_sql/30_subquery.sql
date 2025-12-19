-- Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao 5o dia?
-- 2025-08-25

SELECT count(DISTINCT(IdCliente))

FROM transacoes

WHERE strftime(substr(DtCriacao, 1, 10)) = '2025-08-25'
      OR
      strftime(substr(DtCriacao, 1, 10)) = '2025-08-29'