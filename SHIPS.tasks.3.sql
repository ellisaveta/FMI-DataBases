SELECT DISTINCT COUNTRY
FROM CLASSES
WHERE NUMGUNS >= ALL (SELECT NUMGUNS FROM CLASSES);

SELECT DISTINCT CLASS
FROM SHIPS
WHERE NAME IN (SELECT SHIP FROM OUTCOMES WHERE RESULT = 'sunk');

SELECT NAME, CLASS
FROM SHIPS
WHERE CLASS IN (SELECT CLASS FROM CLASSES WHERE BORE = 16);

SELECT BATTLE
FROM OUTCOMES
WHERE SHIP IN (SELECT NAME FROM SHIPS WHERE CLASS = 'Kongo');

SELECT CLASS, NAME
FROM SHIPS
WHERE CLASS IN (SELECT CLASS FROM CLASSES AS c WHERE NUMGUNS >= ALL (SELECT NUMGUNS FROM CLASSES WHERE BORE = c.BORE));