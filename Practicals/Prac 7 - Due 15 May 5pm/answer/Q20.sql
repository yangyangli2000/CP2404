select CHECK_NUM, BOOK_NUM, PAT_ID, CHECK_OUT_DATE, CHECK_DUE_DATE
from checkout
where CHECK_DUE_DATE < CHECK_IN_DATE
order by BOOK_NUM;
