SELECT 
    lgvendor.VEND_ID,
    VEND_NAME,
    BRAND_NAME,
    COUNT(*) AS 'NUMPRODUCTS'
FROM
    lgbrand
        JOIN
    lgproduct ON lgbrand.BRAND_ID = lgproduct.BRAND_ID
        JOIN
    lgsupplies ON lgproduct.PROD_SKU = lgsupplies.PROD_SKU
        JOIN
    lgvendor ON lgsupplies.VEND_ID = lgvendor.VEND_ID
GROUP BY lgvendor.VEND_ID , VEND_NAME , BRAND_NAME
ORDER BY VEND_NAME , BRAND_NAME;