SELECT round(avg(QtdePontos), 2) AS MediaCarteira,
       min(QtdePontos) AS minCarteira,
       max(QtdePontos) AS maxCarteira,
       sum(flTwitch),
       sum(flemail)

FROM clientes