select author.AU_ID, AU_FNAME, AU_LNAME, book.BOOK_NUM, BOOK_TITLE
from author join writes on author.AU_ID = writes.AU_ID join book on writes.BOOK_NUM = book.BOOK_NUM
where BOOK_SUBJECT like '%CLOUD%'
order by BOOK_TITLE, AU_LNAME;