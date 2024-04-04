/* Ex2. Faça uma consulta que apresente o tamanho médio, máximo e mínimo do 
nome do objeto por categoria */

select * 

from tb_products -- tabela produtos



select product_category_name,
      avg(product_name_lenght) as tamanho_medio_nome,
      max(product_name_lenght) as tamanho_maximo_nome,
      min(product_name_lenght) as tamanho_minimo_nome
      
from tb_products

group by product_category_name
