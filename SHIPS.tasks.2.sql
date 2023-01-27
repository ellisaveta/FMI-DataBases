SELECT NAME
FROM SHIPS, CLASSES
WHERE SHIPS.CLASS = CLASSES.CLASS AND DISPLACEMENT>50000;

SELECT NAME, DISPLACEMENT, NUMGUNS
FROM SHIPS, CLASSES, OUTCOMES
WHERE SHIPS.NAME = OUTCOMES.SHIP AND BATTLE = 'Guadalcanal' AND SHIPS.CLASS = CLASSES.CLASS;

SELECT COUNTRY
FROM CLASSES
WHERE TYPE='bb'
INTERSECT
SELECT COUNTRY
FROM CLASSES
WHERE TYPE='bc';

SELECT [1st].SHIP
FROM
   (SELECT * FROM OUTCOMES, BATTLES WHERE RESULT = 'damaged' AND BATTLE = NAME) [1st]

   INNER JOIN

   (SELECT * FROM OUTCOMES, BATTLES WHERE BATTLE = NAME) [2nd]
   ON [1st].SHIP = [2nd].SHIP
WHERE [1st].DATE < [2nd].DATE;