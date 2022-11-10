SELECT 
    c1.INV_NUM,
    c1.LINE_NUM,
    c1.PROD_SKU,
    c1.PROD_DESCRIPT,
    c2.LINE_NUM,
    c2.PROD_SKU,
    c2.PROD_DESCRIPT,
    c1.BRAND_ID
FROM
    (SELECT 
        lgline.LINE_NUM,
            lgproduct.PROD_SKU,
            PROD_DESCRIPT,
            BRAND_ID,
            INV_NUM,
            PROD_CATEGORY
    FROM
        lgline
    JOIN lgproduct ON lgline.PROD_SKU = lgproduct.PROD_SKU
    WHERE
        lgproduct.PROD_CATEGORY = 'Sealer') AS c1,
    (SELECT 
        lgline.LINE_NUM,
            lgproduct.PROD_SKU,
            PROD_DESCRIPT,
            BRAND_ID,
            INV_NUM,
            PROD_CATEGORY
    FROM
        lgline
    JOIN lgproduct ON lgline.PROD_SKU = lgproduct.PROD_SKU
    WHERE
        lgproduct.PROD_CATEGORY = 'Top Coat') AS c2
WHERE
    c1.INV_NUM = c2.INV_NUM
        AND c1.BRAND_ID = c2.BRAND_ID
ORDER BY c1.INV_NUM , c1.LINE_NUM;