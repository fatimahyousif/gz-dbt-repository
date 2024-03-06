SELECT 
s.*,
d.average_basket,
d.operational_margin ,
ROUND((d.operational_margin - s.ads_cost),2) AS Ads_margin 
FROM {{ref('int_campaigns_day')}} s
JOIN {{ref('finance_days')}} d
USING(date_date)