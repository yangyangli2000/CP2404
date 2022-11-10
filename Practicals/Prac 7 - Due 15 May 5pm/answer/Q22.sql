select PAT_ID as 'PATRON', BOOK_NUM as 'BOOK', datediff(CHECK_IN_DATE,CHECK_OUT_DATE) as 'Days Kept'
from checkout
order by datediff(CHECK_IN_DATE,CHECK_OUT_DATE) desc, PAT_ID, BOOK_NUM;