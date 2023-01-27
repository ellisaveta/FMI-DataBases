SELECT MAKER, SPEED
FROM product, laptop
WHERE product.MODEL=laptop.model AND hd >= 9;

SELECT product.MODEL, PRICE
FROM product, pc
WHERE maker='B' and product.model = pc.model
UNION
SELECT product.MODEL, PRICE
FROM product, laptop
WHERE maker='B' and product.model = laptop.model
UNION
SELECT product.MODEL, PRICE
FROM product, printer
WHERE maker='B' and product.model = printer.model;

SELECT MAKER
FROM product, laptop
WHERE product.model = laptop.model
EXCEPT 
SELECT MAKER
FROM product, pc
WHERE product.model = pc.model;

SELECT HD
FROM PC
GROUP BY HD
HAVING COUNT(*) >= 2;

SELECT DISTINCT [1st].MODEL, [2nd].MODEL
FROM
   (SELECT * FROM pc) [1st]
   INNER JOIN
   (SELECT * FROM pc) [2nd]
   ON [1st].model < [2nd].model
WHERE [1st].speed = [2nd].speed AND [1st].ram=[2nd].ram;


SELECT MAKER
FROM product, pc
WHERE product.model = PC.model AND PC.speed >= 400
GROUP BY MAKER
HAVING COUNT(*) >= 2;