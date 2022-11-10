SELECT 
    lgcustomer.CUST_CODE,
    CUST_FNAME,
    CUST_LNAME,
    CUST_STREET,
    CUST_CITY,
    CUST_STATE,
    CUST_ZIP,
    INV_DATE,
    INV_TOTAL AS 'Largest Invoice'
FROM
    lgcustomer
        JOIN
    lginvoice ON lgcustomer.CUST_CODE = lginvoice.CUST_CODE
WHERE
    CUST_STATE = 'AL'
        AND INV_TOTAL = (SELECT 
            MAX(INV_TOTAL)
        FROM
            lginvoice
        WHERE
            lginvoice.CUST_CODE = lgcustomer.CUST_CODE) 
UNION SELECT 
    lgcustomer.CUST_CODE,
    CUST_FNAME,
    CUST_LNAME,
    CUST_STREET,
    CUST_CITY,
    CUST_STATE,
    CUST_ZIP,
    NULL,
    0
FROM
    lgcustomer
WHERE
    CUST_STATE = 'AL'
        AND CUST_CODE NOT IN (SELECT 
            CUST_CODE
        FROM
            lginvoice)
ORDER BY CUST_LNAME , CUST_FNAME;