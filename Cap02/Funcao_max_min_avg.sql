-- Selecione o peso mais pesado e o menor peso menor e a média
-- Função MAX -> Retornar o maior valor do campo
-- Função MIN -> Retornar o menor valor do campo
-- Função AVG -> Retornar a média dos Valores do campo
SELECT 
       MAX(product_weight_g) as maior_peso,
       MIN(product_weight_g)  as menor_peso,
       AVG(product_weight_g) as media_peso
from tb_products



