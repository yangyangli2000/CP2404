select PAT_ID, round(avg(datediff(CHECK_IN_DATE, CHECK_OUT_DATE)), 2) as 'Average Days Kept'
from checkout
group by PAT_ID
having count(CHECK_NUM) > 2
order by 'Average Days Kept' DESC;