with daily_orders as (
    select
        date(ordered_at) as order_date,
        count(*) as order_count
    from
        {{ ref('orders') }}
    group by
        1
)
select
    order_date,
    order_count
from
    daily_orders
order by
    order_date