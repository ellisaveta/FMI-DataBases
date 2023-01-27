SELECT maker, product.model, product.type
FROM product LEFT JOIN pc ON pc.model = product.model
LEFT JOIN laptop ON laptop.model = product.model
LEFT JOIN printer ON printer.model = product.model
WHERE pc.CODE IS NULL AND laptop.code IS NULL AND printer.CODE IS NULL;

SELECT maker
FROM product JOIN pc ON product.model = pc.model
INTERSECT 
SELECT maker
FROM product JOIN printer ON product.model = printer.model;


SELECT DISTINCT L1.HD
FROM laptop AS L1 JOIN laptop AS L2 ON L1.HD = L2.HD
WHERE L1.code != L2.code;

SELECT PC.model
FROM PC LEFT JOIN product ON PC.model = product.model
WHERE maker IS NULL;