select AU_ID, book.BOOK_NUM, BOOK_TITLE, BOOK_SUBJECT
from book join writes on book.BOOK_NUM = writes.BOOK_NUM
order by BOOK_NUM, AU_ID;