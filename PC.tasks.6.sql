SELECT L1.model, L1.code, L1.screen
FROM laptop AS L1, laptop AS L2
WHERE L1.model = L2.model AND (L1.screen = 11 AND L2.screen = 15) OR (L1.screen = 15 AND L2.screen = 11)
ORDER BY L1.code;

SELECT DISTINCT PC.model
FROM PC JOIN product AS P1 ON PC.model = P1.model
WHERE price < (SELECT MIN(price) FROM laptop
				 JOIN product AS P2 ON laptop.model=P2.model WHERE P2.maker = P1.MAKER);

SELECT PC.model, AVG(PC.price) AS avg_price
FROM PC JOIN product AS P1 ON PC.model = P1.model
GROUP BY PC.model, P1.maker
HAVING AVG(PC.price) < 
(SELECT MIN(price) FROM laptop JOIN product AS P2 ON laptop.model=P2.model WHERE P2.maker = P1.MAKER);

SELECT P1.CODE, MAKER, COUNT(P2.code) AS num_pc_higher_price
FROM pc AS P1, pc AS P2, product
WHERE P1.model = product.model AND P1.price <= P2.price AND P2.model = product.model
GROUP BY P1.CODE, MAKER;
