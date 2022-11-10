select BOOK_NUM, BOOK_TITLE, BOOK_YEAR
from book
where BOOK_SUBJECT = 'Programming' and BOOK_YEAR > '2015-01-01'
order by BOOK_NUM;