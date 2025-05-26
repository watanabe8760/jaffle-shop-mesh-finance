select *
from {{ ref('jaffle_shop_mesh_marketing', 'locations') }}
where tax_rate <= 0.04
