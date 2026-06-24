#1. What are the 10 most expensive products in the company?
SELECT PRODUCT_NAME, PRODUCT_VAL
FROM `looqbox-challenge`.data_product
ORDER BY PRODUCT_VAL DESC
LIMIT 10;

#2. What sections do the 'BEBIDAS' and 'PADARIA' departments have?
SELECT DISTINCT DEP_NAME , SECTION_NAME
FROM `looqbox-challenge`.data_product
WHERE DEP_NAME IN ('BEBIDAS','PADARIA')
ORDER BY DEP_NAME, SECTION_NAME;

#3. What was the total sale of products (in $) of each Business Area in the first quarter of 2019?
SELECT CAD.BUSINESS_NAME , SUM(SALES.SALES_VALUE) AS SALES_VALUE
FROM `looqbox-challenge`.data_store_sales AS SALES
LEFT JOIN `looqbox-challenge`.data_store_cad as CAD 
ON SALES.STORE_CODE = CAD.STORE_CODE
WHERE SALES.DATE BETWEEN '2019-01-01' AND '2019-03-31'
GROUP BY CAD.BUSINESS_NAME
ORDER BY SUM(SALES.SALES_VALUE) DESC;


