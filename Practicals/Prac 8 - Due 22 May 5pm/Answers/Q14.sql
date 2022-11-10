select patron.PAT_ID, BOOK_NUM, PAT_FNAME, PAT_LNAME, BOOK_TITLE
from patron join book on patron.PAT_ID = book.PAT_ID
order by PAT_LNAME, BOOK_TITLE;