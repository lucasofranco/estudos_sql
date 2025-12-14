-- Qual o valor médio de pontos positivos em cada dia?

SELECT round(avg(QtdePontos), 2) AS MediaDia,

       substr(DtCriacao, 1, 10) AS DtCriacaoNova
       
FROM transacoes

WHERE QtdePontos > 0

GROUP BY substr(DtCriacao, 1, 10);

-- Qual o valor médio de pontos positivos por dia?

SELECT sum(QtdePontos),

       count(DISTINCT substr(DtCriacao, 1, 10)) AS DtCriacaoNova,

       sum(QtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS MediaDia

FROM transacoes

WHERE QtdePontos > 0;