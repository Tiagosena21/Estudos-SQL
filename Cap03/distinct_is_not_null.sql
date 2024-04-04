--Lista das categorias por ordem alfabética, retirando os valores null


select *

from tb_products -- tabela produtos


select distinct product_category_name

from tb_products

WHERE product_category_name is not null -- retirou os null da consulta

order by product_category_name 