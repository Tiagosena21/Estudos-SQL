-- Ex1. Faça uma query que apresente o tamanho médio, 
-- máximo e mínimo da descrição do objeto por categoria

select * 

from tb_products -- tabela produtos


select  product_category_name,	
        avg(product_description_lenght) as tamanho_med_categoria,
        max(product_description_lenght) as tamanho_max_categoria,
        min(product_description_lenght) as tamanho_min_categoria

from tb_products
where product_category_name is not null

GROUP BY product_category_name


 
