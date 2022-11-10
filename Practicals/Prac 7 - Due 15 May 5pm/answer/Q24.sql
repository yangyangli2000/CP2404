select BOOK_NUM, concat(BOOK_TITLE, ' ', '(', BOOK_YEAR,')') as 'BOOK', BOOK_SUBJECT
from book
order by BOOK_NUM;