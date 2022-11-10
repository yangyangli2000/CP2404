select PAT_ID, PAT_FNAME, PAT_LNAME
from patron
where PAT_TYPE LIKE '%STUDENT%'
order by PAT_ID;