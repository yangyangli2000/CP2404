select PAT_ID, concat(PAT_FNAME, ' ', PAT_LNAME) as 'Patron Name', PAT_TYPE
from patron
order by PAT_ID;