
    
    

with all_values as (

    select
        revenue as value_field,
        count(*) as n_records

    from `flawless-energy-496714-m2`.`raw`.`fct_order_items`
    group by revenue

)

select *
from all_values
where value_field not in (
    '>= 0'
)


