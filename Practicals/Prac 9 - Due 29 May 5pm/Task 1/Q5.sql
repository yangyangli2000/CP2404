SELECT 
    MIN(avgcost) AS 'Lowest Avg Cost',
    MAX(avgcost) AS 'Highest Avg Cost'
FROM
    (SELECT 
        BOOK_SUBJECT, ROUND(AVG(BOOK_COST), 2) AS avgcost
    FROM
        book
    GROUP BY BOOK_SUBJECT) AS avgcost;
