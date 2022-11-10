SELECT 
    lgbrand.BRAND_ID,
    BRAND_NAME,
    ROUND(AVG(PROD_PRICE), 2) AS 'AVGPRICE'
FROM
    lgbrand
        JOIN
    lgproduct ON lgbrand.BRAND_ID = lgproduct.BRAND_ID
GROUP BY lgbrand.BRAND_ID
ORDER BY BRAND_NAME;