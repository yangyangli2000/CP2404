SELECT 
    lgproduct.BRAND_ID, BRAND_NAME, BRAND_TYPE, MAX(avgprice) as 'AVGPRICE'
FROM
    lgproduct
        JOIN
    lgbrand ON lgproduct.BRAND_ID = lgbrand.BRAND_ID,
    (SELECT 
        lgproduct.BRAND_ID, AVG(lgproduct.PROD_PRICE) AS 'avgprice'
    FROM
        lgproduct
    GROUP BY lgproduct.BRAND_ID) AS avgprice
GROUP BY lgproduct.BRAND_ID , BRAND_NAME , BRAND_TYPE