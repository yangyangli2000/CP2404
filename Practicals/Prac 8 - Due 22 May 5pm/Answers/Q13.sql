select AU_LNAME, AU_FNAME, BOOK_TITLE, BOOK_COST
from author join writes on author.AU_ID = writes.AU_ID join book on writes.BOOK_NUM = book.BOOK_NUM
order by book.BOOK_NUM, author.AU_ID;