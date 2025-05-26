select *
from {{ ref('jaffle_shop_mesh_marketing', 'customers') }}
where lifetime_spend >= 1000
