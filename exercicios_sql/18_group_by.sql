-- Quantos produtos são de rpg?

SELECT DescCategoriaProduto,
       count(*)

FROM produtos

WHERE DescCategoriaProduto = 'rpg'

GROUP BY DescCategoriaProduto

