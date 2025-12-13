-- Lista de produtos que sao chapeu

SELECT * 

FROM produtos

WHERE DescNomeProduto LIKE '%chapéu%'

-- WHERE DescNomeProduto NOT LIKE '%chapéu%' 
-- pega todos menos o chapeu