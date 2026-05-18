with source as (

    select * from `flawless-energy-496714-m2`.`raw_raw`.`raw_stores`

),

renamed as (

    select
        id as store_id,
        name as store_name,
        opened_at as opened_at,
        tax_rate as tax_rate

    from source

)

select * from renamed