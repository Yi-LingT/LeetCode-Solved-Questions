with cte as
(select * from
    (select "Android" as platform 
    union 
    select "IOS" as platform 
    union
    select "Web" as platform ) as A
    join
    (select "Reading" as experiment_name 
    union 
    select "Sports" as experiment_name 
    union
    select "Programming" as experiment_name ) as B
    order by platform
)

select cte.platform,cte.experiment_name,coalesce(count(experiment_id),0) as num_experiments 
from cte
left join Experiments as C  
on cte.platform=C.platform and cte.experiment_name=C.experiment_name
group by 1,2
order by 1

#coalesce - Return the first non-null value in a list