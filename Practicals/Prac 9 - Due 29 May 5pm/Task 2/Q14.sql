SELECT 
    lgemployee.EMP_NUM, EMP_LNAME, EMP_FNAME, SAL_AMOUNT
FROM
    lgemployee
        JOIN
    lgsalary_history ON lgemployee.EMP_NUM = lgsalary_history.EMP_NUM
WHERE
    SAL_END IS NULL AND DEPT_NUM = '300'
ORDER BY SAL_AMOUNT DESC;
