with cte as(
SELECT * FROM Year_0_Bike
union all
SELECT * FROM Year_1_Bike)


select  dteday, season, a.yr, weekday, hr, rider_type, riders, price, COGS, riders*price as revenue, riders*price -COGS as profit
from cte a
left join cost_table  b
on a.yr = b.yr