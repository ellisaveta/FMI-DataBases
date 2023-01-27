/*
INSERT INTO product
VALUES (1100, 'c', 'pc');

INSERT INTO pc
VALUES (12, '1100', 2400, 2048, 500, '52x', 299);
*/

/*
DELETE FROM pc
WHERE model = '1100';
*/

/*
DELETE FROM laptop
WHERE model IN (SELECT P1.MODEL FROM product AS P1
 WHERE MODEL = P1.model AND P1.maker NOT IN (SELECT P2.maker FROM product AS P2, printer AS PR WHERE P2.model=PR.model));
 */

/*
UPDATE product
SET maker = 'A'
WHERE maker = 'B';
*/

/*
UPDATE pc
SET price = price/2, HD = HD+20;
*/

/*
UPDATE laptop
SET screen +=1
WHERE model IN (SELECT P.model FROM product AS P WHERE P.maker = 'B' AND type = 'Laptop');
*/

