SELECT DISTINCT
    CUST_FNAME,
    CUST_LNAME,
    CUST_STREET,
    CUST_CITY,
    CUST_STATE,
    CUST_ZIP
FROM
    lgcustomer
        JOIN
    lginvoice ON lgcustomer.CUST_CODE = lginvoice.CUST_CODE
        JOIN
    lgline ON lginvoice.INV_NUM = lgline.INV_NUM
        JOIN
    lgproduct ON lgline.PROD_SKU = lgproduct.PROD_SKU
        JOIN
    lgbrand ON lgproduct.BRAND_ID = lgbrand.BRAND_ID
WHERE
    lgbrand.BRAND_NAME = 'Foresters Best'
        AND lgproduct.PROD_CATEGORY = 'Top Coat'
        AND lginvoice.INV_DATE BETWEEN '2013-07-15' AND '2013-07-31'
ORDER BY CUST_STATE , CUST_LNAME , CUST_FNAME;