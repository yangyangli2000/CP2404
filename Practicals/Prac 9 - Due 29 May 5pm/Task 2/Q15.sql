SELECT 
    lgemployee.EMP_NUM, EMP_LNAME, EMP_FNAME, SAL_AMOUNT
FROM
    lgemployee
        JOIN
    lgsalary_history ON lgemployee.EMP_NUM = lgsalary_history.EMP_NUM
WHERE
    SAL_FROM = (SELECT 
            MIN(SAL_FROM)
        FROM
            lgsalary_history
        WHERE
            lgemployee.EMP_NUM = lgsalary_history.EMP_NUM)
ORDER BY lgemployee.EMP_NUM;
