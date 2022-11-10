select AU_ID, AU_FNAME, AU_LNAME
from author
where AU_BIRTHYEAR is not null
order by AU_ID;