SELECT DISTINCT MAKER
FROM product, PC
WHERE product.MODEL = PC.model AND SPEED > 500;

SELECT TOP (2) CODE, MODEL, PRICE 
FROM printer 
ORDER BY PRICE DESC;

SELECT * 
FROM laptop
WHERE SPEED < ALL (SELECT SPEED FROM PC);

SELECT TOP (1) *
FROM 
(SELECT MODEL, PRICE
FROM PC
UNION
SELECT MODEL, PRICE
FROM laptop
UNION
SELECT MODEL, PRICE
FROM printer) AS T
ORDER BY T.price DESC; 

SELECT TOP (1) MAKER
FROM product, printer
WHERE product.model = printer.model AND color='y'
ORDER BY price ASC;

SELECT DISTINCT MAKER
FROM product
WHERE model IN ( SELECT model FROM PC AS P 
WHERE ram <= ALL (SELECT ram FROM pc) AND speed >= ALL (SELECT speed FROM pc WHERE ram = P.ram)); 
