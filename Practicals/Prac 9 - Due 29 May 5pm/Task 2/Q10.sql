SELECT 
    lgdepartment.DEPT_NUM,
    DEPT_NAME,
    DEPT_PHONE,
    lgemployee.EMP_NUM,
    EMP_LNAME
FROM
    lgdepartment
        JOIN
    lgemployee ON lgdepartment.DEPT_NUM = lgemployee.DEPT_NUM
WHERE
    EMP_TITLE LIKE '%Manager'
ORDER BY DEPT_NAME;