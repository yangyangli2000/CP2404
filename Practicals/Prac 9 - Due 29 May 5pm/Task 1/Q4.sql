SELECT 
    book.BOOK_NUM,
    BOOK_TITLE,
    book.BOOK_SUBJECT,
    AU_LNAME,
    numbook AS 'Num Books by Author'
FROM
    ((book
    INNER JOIN writes ON book.BOOK_NUM = writes.BOOK_NUM
    INNER JOIN author ON writes.AU_ID = author.AU_ID), (SELECT 
        AU_ID, COUNT(BOOK_NUM) AS numbook
    FROM
        writes
    GROUP BY AU_ID) AS subnumbook)
WHERE
    BOOK_SUBJECT LIKE 'Cloud%'
GROUP BY book.BOOK_NUM , BOOK_TITLE , BOOK_SUBJECT , AU_LNAME
ORDER BY BOOK_TITLE , AU_LNAME;

