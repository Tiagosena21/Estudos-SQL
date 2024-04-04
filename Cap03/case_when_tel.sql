

-- Utilizando o case when

select case when tel1 is not null then tel1
            when tel2 is not null then tel2
            when cel1 is not null then cel1
            when cel2 is not null then cel2
            else 0
        end as telefone,

-- Utilizando o coalesce -> simplificar o filtro, caso os valores seja null ele assumir o valor.
        coalesce(tel1,tel2,cel1,cel2) as telefone

from contatos