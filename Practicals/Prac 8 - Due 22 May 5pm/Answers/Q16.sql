select book.BOOK_NUM, BOOK_TITLE, AU_LNAME, AU_FNAME, patron.PAT_ID, PAT_LNAME, PAT_TYPE
from author join writes on author.AU_ID = writes.AU_ID join book on writes.BOOK_NUM = book.BOOK_NUM join patron on book.PAT_ID = patron.PAT_ID
where book.PAT_ID is not null
order by BOOK_TITLE;