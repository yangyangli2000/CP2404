select CHECK_NUM, BOOK_NUM, CHECK_OUT_DATE
from checkout
where CHECK_OUT_DATE < '2017-04-05'
order by CHECK_NUM;