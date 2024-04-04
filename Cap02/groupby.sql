
--GROUP BY - Agrupamento de valores
-- Ex - Retorne os valores de todas categorias com a o máximo,minimo,
--média, e que não tenha os campos das categoria- alimentos e agro_industria_e_comercio

SELECT 
       product_category_name, -- agregação da tabela
       count(*) as qtd_produtos,
       MAX(product_weight_g) as maior_peso,
       MIN(product_weight_g)  as menor_peso,
       AVG(product_weight_g) as media_peso
from tb_products

-- Isso vem antes do group by (no processamento também)
where product_category_name is not null 
and product_category_name != 'alimentos'
and product_category_name <> 'agro_industria_e_comercio'

GROUP BY product_category_name