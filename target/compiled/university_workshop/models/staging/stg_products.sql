with source as (

    select * from `flawless-energy-496714-m2`.`raw_raw`.`raw_products`

),

renamed as (

    select
        sku as product_sku,
        name as product_name,
        type as product_type,
        price as product_price,
        description as product_description

    from source

)

select * from renamed