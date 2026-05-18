select 
    order_item_id, 
    count(*) as duplicate_count
from {{ ref('fct_order_items') }}
group by 1
having count(*) > 1