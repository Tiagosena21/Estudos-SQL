--Lista das categorias por ordem alfabética, retirando os valores null


select *

from tb_products -- tabela produtos

-- case when -> É o IF e Else do SQL
select 
        distinct case when product_category_name is null then 'outros'
                      else product_category_name 
                 end as categoria_fillna

from tb_products

order by 1

