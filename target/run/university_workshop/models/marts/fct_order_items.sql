

  create or replace view `flawless-energy-496714-m2`.`raw`.`fct_order_items`
  OPTIONS()
  as with items as (

    select * from `flawless-energy-496714-m2`.`raw`.`stg_items`

),

orders as (

    select * from `flawless-energy-496714-m2`.`raw`.`stg_orders`

),

products as (

    select * from `flawless-energy-496714-m2`.`raw`.`dim_products`

)

select
    -- Pull the correct item identifier from stg_items
    i.item_id as order_item_id,
    i.order_id,
    
    -- Pull all parent order fields from stg_orders
    orders.customer_id,
    orders.ordered_at,
    orders.store_id,
    orders.subtotal,
    orders.tax_paid,
    orders.order_total,
    
    -- Map product_price directly to revenue for your tests
    p.product_price as revenue,
    
    -- Dynamically bring in the rest of the product columns from dim_products safely
    p.*
from items i
left join orders 
    on i.order_id = orders.order_id
left join products p 
    on i.product_sku = p.product_sku;

