select AU_LNAME, AU_FNAME, BOOK_NUM
from author join writes on author.AU_ID = writes.AU_ID
order by AU_LNAME, AU_FNAME, BOOK_NUM;