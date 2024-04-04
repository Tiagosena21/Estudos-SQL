/* Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do 
objeto por categoria. Considere apenas os objetos que tenham a 
descrição maior que 100. Exiba apenas as categorias com tamanho médio
de descrição do objeto maior que 500 caracteres. */



select * 

from tb_products --tabela de produtos


select product_category_name,
      avg(product_name_lenght) as tamanho_medio_nome,
      max(product_name_lenght) as tamanho_maximo_nome,
      min(product_name_lenght) as tamanho_minimo_nome
FROM tb_products

where product_description_lenght > 100

group by product_category_name

/* É utilizado o having após uma agregação, quando uma função já foi 
utilizada como o avg, para utlizar novamente têm que ser colocado having
 após o group by como o exemplo abaixo*/

HAVING avg(product_description_lenght) > 500

-- ORDER BY avg(product_name_lenght) asc

-- ORDER BY - Ordenação
-- ASC classifica do valor mais baixo para o valor mais alto. 
-- DESC classifica do valor mais alto para o valor mais baixo.



