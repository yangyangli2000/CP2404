SELECT 
    lgemployee.EMP_NUM,
    EMP_LNAME,
    EMP_EMAIL,
    EMP_TITLE,
    DEPT_NAME
FROM
    lgemployee
        JOIN
    lgdepartment ON lgemployee.DEPT_NUM = lgdepartment.DEPT_NUM
WHERE
    EMP_TITLE LIKE '%Associate%'
ORDER BY DEPT_NAME , EMP_TITLE;