select PAT_ID, PAT_FNAME, PAT_LNAME
from patron 
where PAT_ID not in (select PAT_ID from checkout)
order by PAT_LNAME, PAT_FNAME;