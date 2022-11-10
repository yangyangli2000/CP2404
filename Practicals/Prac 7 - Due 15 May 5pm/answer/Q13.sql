select BOOK_NUM, BOOK_TITLE, BOOK_SUBJECT, BOOK_COST
from book
where (BOOK_SUBJECT = 'Middleware'or BOOK_SUBJECT = 'Cloud') and BOOK_COST > 70
order by BOOK_NUM;