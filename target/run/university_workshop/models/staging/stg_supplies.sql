

  create or replace view `flawless-energy-496714-m2`.`raw`.`stg_supplies`
  OPTIONS()
  as with source as (

    select * from `flawless-energy-496714-m2`.`raw_raw`.`raw_supplies`

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

select * from renamed;

