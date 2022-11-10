SELECT 
    EMP_NUM,
    EMP_FNAME,
    EMP_LNAME,
    EMP_EMAIL,
    SUM(LINE_QTY) AS 'Total'
FROM
    lgemployee
        JOIN
    lginvoice ON lgemployee.EMP_NUM = lginvoice.EMPLOYEE_ID
        JOIN
    lgline ON lginvoice.INV_NUM = lgline.INV_NUM
        JOIN
    lgproduct ON lgline.PROD_SKU = lgproduct.PROD_SKU
        JOIN
    lgbrand ON lgproduct.BRAND_ID = lgbrand.BRAND_ID
WHERE
    lgbrand.BRAND_NAME = 'Binder Prime'
        AND INV_DATE BETWEEN '2013-11-01' AND '2013-12-05'
GROUP BY EMP_NUM
ORDER BY Total DESC , EMP_LNAME