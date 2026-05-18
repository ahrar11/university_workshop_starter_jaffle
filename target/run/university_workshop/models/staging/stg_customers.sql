

  create or replace view `flawless-energy-496714-m2`.`raw`.`stg_customers`
  OPTIONS()
  as with source as (

    select * from `flawless-energy-496714-m2`.`raw_raw`.`raw_customers`

),

renamed as (

    select
        id as customer_id,
        name as customer_name,

    from source

)

select * from renamed;

