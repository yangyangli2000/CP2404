select BOOK_SUBJECT, count(*) as 'Books In Subject'
from book
group by BOOK_SUBJECT;