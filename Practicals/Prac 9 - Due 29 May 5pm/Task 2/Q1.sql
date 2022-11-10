SELECT 
    EMP_FNAME, EMP_LNAME, EMP_EMAIL
FROM
    lgemployee
WHERE
    EMP_HIREDATE BETWEEN '2005-01-01' AND '2014-12-31'
ORDER BY EMP_LNAME , EMP_FNAME;