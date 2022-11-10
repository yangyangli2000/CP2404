SELECT 
    lgemployee.EMP_NUM,
    EMP_FNAME,
    EMP_LNAME,
    MAX(SAL_AMOUNT) AS 'LARGESTSALARY'
FROM
    lgemployee
        JOIN
    lgsalary_history ON lgemployee.EMP_NUM = lgsalary_history.EMP_NUM
WHERE
    DEPT_NUM = '200'
GROUP BY lgemployee.EMP_NUM , EMP_FNAME , EMP_LNAME
ORDER BY LARGESTSALARY DESC;