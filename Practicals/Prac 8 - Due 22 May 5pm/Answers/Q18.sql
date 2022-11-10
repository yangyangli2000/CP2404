select author.AU_ID, AU_LNAME, BOOK_TITLE, CHECK_OUT_DATE, PAT_LNAME
from author join writes on author.AU_ID = writes.AU_ID join book on writes.BOOK_NUM = book.BOOK_NUM join patron on book.PAT_ID = patron.PAT_ID join checkout on patron.PAT_ID = checkout.PAT_ID
where AU_LNAME like 'Bruer%' and PAT_LNAME like 'Miles%'
order by CHECK_OUT_DATE;