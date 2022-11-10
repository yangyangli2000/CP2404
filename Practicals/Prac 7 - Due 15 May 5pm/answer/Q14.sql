select AU_ID, AU_FNAME, AU_LNAME,AU_BIRTHYEAR
from author
where AU_BIRTHYEAR between 1980 and 1989
order by AU_ID;