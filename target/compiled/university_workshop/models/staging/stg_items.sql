with source as (

    select * from `flawless-energy-496714-m2`.`raw_raw`.`raw_items`

),

renamed as (

    select
        id as item_id,
        order_id as order_id,
        sku as product_sku

    from source

)

select * from renamed