select book.BOOK_NUM, BOOK_TITLE, count(CHECK_NUM) as 'Times Checked Out'
from book join checkout on book.BOOK_NUM = checkout.BOOK_NUM
group by book.BOOK_NUM, BOOK_TITLE
having count(CHECK_NUM) > 5
order by count(CHECK_NUM) desc, BOOK_TITLE;