with source as (

    select * from {{ ref('raw_supplies') }}

),

renamed as (

    select
        id as supply_id,
        name as supply_name,
        cost as supply_cost,
        perishable as supply_perishable,
        sku as supply_sku

    from source

)

select * from renamed