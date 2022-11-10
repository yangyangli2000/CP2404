select count(BOOK_NUM) as 'AVILABLE BOOKS'
from book
where PAT_ID IS NULL;
