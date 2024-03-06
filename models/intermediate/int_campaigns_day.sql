select
    date_date,
    sum(ads_cost) as ads_cost,
    sum(impression) as ads_impression,
    sum(click) as ads_clicks
from {{ ref("int_campaigns") }}
GROUP by date_date