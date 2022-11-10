SELECT 
    AU_ID, AU_FNAME, AU_LNAME
FROM
    author
WHERE
    AU_ID NOT IN (SELECT 
            AU_ID
        FROM
            book
                INNER JOIN
            writes ON book.BOOK_NUM = writes.BOOK_NUM
        WHERE
            BOOK_SUBJECT LIKE 'Programming%')
ORDER BY AU_LNAME;

