select AU_ID, count(*) as 'Books Written'
from writes
group by AU_ID
order by count(*) desc, AU_ID;