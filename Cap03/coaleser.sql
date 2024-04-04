-- coaleser 

select * from tb_products -- tabela produtos


select DISTINCT coalesce (product_category_name, 'outros') as categorias_fillna

from tb_products

order by product_category_name





