select BOOK_NUM, BOOK_TITLE, BOOK_SUBJECT
from book
where Upper(BOOK_TITLE) LIKE '%DATABASE%'
order by BOOK_NUM;