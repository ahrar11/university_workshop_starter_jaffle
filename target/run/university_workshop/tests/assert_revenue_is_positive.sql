
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- This test will fail if any order item has a negative revenue amount
select
    order_item_id,
    revenue
from `flawless-energy-496714-m2`.`raw`.`fct_order_items`
where revenue < 0
  
  
      
    ) dbt_internal_test