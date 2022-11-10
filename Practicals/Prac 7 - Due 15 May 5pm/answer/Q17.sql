select PAT_ID, PAT_FNAME, PAT_LNAME, PAT_TYPE
from patron
where PAT_LNAME LIKE 'C%'
order by PAT_ID;