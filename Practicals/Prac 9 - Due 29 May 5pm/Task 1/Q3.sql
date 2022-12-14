SELECT 
    BOOK_NUM,
    BOOK_TITLE,
    book.BOOK_SUBJECT,
    ROUND(AVGCOST, 2) AS 'Average Subject Cost',
    BOOK_COST - ROUND(AVGCOST, 2) AS DIFFERENCE
FROM
    book
        JOIN
    (SELECT 
        BOOK_SUBJECT, AVG(BOOK_COST) AS AVGCOST
    FROM
        book
    GROUP BY BOOK_SUBJECT) AS subavges ON book.BOOK_SUBJECT = subavges.BOOK_SUBJECT
ORDER BY BOOK_TITLE;
