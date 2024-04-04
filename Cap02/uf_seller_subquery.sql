-- Quantos vendedores 



select seller_state,
       count(*) as qtde_sellers
       
from tb_sellers

WHERE seller_state IN('SP','RJ','PR')

group by seller_state



-- Sub query -> É utilizado mais não é recomendado
select t1.* from (

    select seller_state,
            count(*) as qtde_sellers

    from tb_sellers

    group by seller_state


) as t1
WHERE t1.qtde_sellers > 10




