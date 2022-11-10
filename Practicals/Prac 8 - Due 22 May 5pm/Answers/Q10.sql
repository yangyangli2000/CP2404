select BOOK_NUM, count(*) as 'Times Checked Out'
from checkout
group by BOOK_NUM
order by count(*) desc, BOOK_NUM desc;