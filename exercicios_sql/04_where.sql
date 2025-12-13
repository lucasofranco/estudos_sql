--Selecione produtos que contém 'churn' no nome

SELECT *

FROM produtos

-- WHERE DescNomeProduto in ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')

--WHERE DescNomeProduto = 'Churn_10pp'
--      OR DescNomeProduto = 'Churn_2pp'
--      OR DescNomeProduto = 'Churn_5pp' 

--WHERE DescNomeProduto LIKE 'churn%'

WHERE DescCategoriaProduto = 'churn_model'
