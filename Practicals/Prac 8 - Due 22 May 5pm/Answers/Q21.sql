select patron.PAT_ID, PAT_LNAME, count(CHECK_NUM) as 'NUM CHECKOUTS', count(distinct(BOOK_NUM)) as 'NUM DIFFERENT BOOKS'
from patron join checkout on patron.PAT_ID = checkout.PAT_ID
group by patron.PAT_ID, PAT_LNAME
having count(CHECK_NUM) >= 3
order by count(distinct(BOOK_NUM)) desc, count(CHECK_NUM) desc, patron.PAT_ID;

