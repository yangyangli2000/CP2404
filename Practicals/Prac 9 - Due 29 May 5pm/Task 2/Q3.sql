SELECT 
    lgemployee.EMP_NUM,
    EMP_LNAME,
    EMP_FNAME,
    SAL_FROM,
    SAL_END,
    SAL_AMOUNT
FROM
    lgsalary_history
        JOIN
    lgemployee ON lgemployee.EMP_NUM = lgsalary_history.EMP_NUM
WHERE
    lgemployee.EMP_NUM IN ('83731' , '83745', '84039')
ORDER BY EMP_LNAME , EMP_NUM , SAL_FROM;