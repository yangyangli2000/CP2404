SELECT 
    MAX(avgprice) AS 'LARGEST AVERAGE'
FROM
    (SELECT 
        BRAND_ID, ROUND(AVG(PROD_PRICE), 2) AS 'avgprice'
    FROM
        lgproduct
    GROUP BY BRAND_ID) as avgprice;