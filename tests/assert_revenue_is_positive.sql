-- This test will fail if any order item has a negative revenue amount
select
    order_item_id,
    revenue
from {{ ref('fct_order_items') }}
where revenue < 0