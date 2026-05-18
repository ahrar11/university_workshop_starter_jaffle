

  create or replace view `flawless-energy-496714-m2`.`raw`.`dim_products`
  OPTIONS()
  as with products as (

    select * from `flawless-energy-496714-m2`.`raw`.`stg_products`

),

supplies as (

    select * from `flawless-energy-496714-m2`.`raw`.`stg_supplies`

),

-- Aggregate supply costs completely independently using the correct supply column names
aggregated_supplies as (

    select
        supply_sku,
        sum(supply_cost) as total_supply_cost
    from supplies
    group by supply_sku

)

-- Select everything directly from your pristine products model 
-- and safely map the supply cost to it
select
    p.*,
    coalesce(s.total_supply_cost, 0) as total_supply_cost
from products p
left join aggregated_supplies s 
    on p.product_sku = s.supply_sku;

