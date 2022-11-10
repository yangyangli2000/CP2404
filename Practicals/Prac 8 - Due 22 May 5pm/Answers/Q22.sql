select round(avg(datediff(CHECK_IN_DATE, CHECK_OUT_DATE)), 2) as 'Average Days Kept'
from checkout;