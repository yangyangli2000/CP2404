SELECT DISTINCT
    lgcustomer.CUST_CODE, CUST_FNAME, CUST_LNAME
FROM
    lgcustomer
        JOIN
    lginvoice ON lgcustomer.CUST_CODE = lginvoice.CUST_CODE
WHERE
    EMPLOYEE_ID IN ('83649' , '83677')
ORDER BY CUST_LNAME , CUST_FNAME;