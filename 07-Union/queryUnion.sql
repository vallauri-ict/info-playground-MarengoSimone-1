SELECT 'Internet' as Tipo,Data
FROM VenditeInternet
UNION
SELECT 'Negozio' as Tipo,Data 
FROM VenditeNegozio
ORDER BY Data Desc

SELECT Data
FROM VenditeInternet
INTERSECT
SELECT Data 
FROM VenditeNegozio
ORDER BY Data Desc