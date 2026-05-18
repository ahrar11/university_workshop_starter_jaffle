

  create or replace view `flawless-energy-496714-m2`.`raw`.`stg_orders`
  OPTIONS()
  as with source as (

    select * from `flawless-energy-496714-m2`.`raw_raw`.`raw_orders`

),

renamed as (

    select
        id as order_id,
        customer as customer_id,
        ordered_at as ordered_at,
        store_id as store_id,
        subtotal as subtotal,
        tax_paid as tax_paid,
        order_total as order_total

    from source

)

select * from renamed;

