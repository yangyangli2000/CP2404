select book.BOOK_NUM, BOOK_TITLE, count(CHECK_NUM) as 'Times Checked Out'
from book left join checkout on book.BOOK_NUM = checkout.BOOK_NUM
group by book.BOOK_NUM, BOOK_TITLE
order by count(CHECK_NUM) desc, BOOK_TITLE;