select PAT_ID, concat(PAT_FNAME, ' ', PAT_LNAME) as 'NAME', PAT_TYPE
from patron
order by PAT_TYPE, PAT_LNAME, PAT_FNAME;