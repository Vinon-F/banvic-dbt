with
    fonte_localidade as (
        select *
        from {{ source('dev', 'localidades') }}
    )

, renomeado as (
    select
        cod_localidade as pk_localidade
        , cast(cidade as string) as cidade
        , cast(UF as string) as uf
    from fonte_localidade
    )    

select *
from renomeado