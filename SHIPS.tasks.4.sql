SELECT *
FROM SHIPS LEFT JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS;

SELECT *
FROM SHIPS FULL JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS;

SELECT COUNTRY, NAME
FROM CLASSES JOIN SHIPS ON CLASSES.CLASS = SHIPS.CLASS
WHERE NAME NOT IN (SELECT SHIP FROM OUTCOMES)
ORDER BY COUNTRY;

SELECT NAME AS "Ship Name"
FROM SHIPS JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS
WHERE NUMGUNS >= 7 AND LAUNCHED = 1916;

SELECT SHIP, BATTLE, DATE
FROM OUTCOMES JOIN BATTLES ON OUTCOMES.BATTLE = BATTLES.NAME
WHERE RESULT = 'sunk'
ORDER BY BATTLE;

SELECT NAME, DISPLACEMENT, LAUNCHED
FROM SHIPS JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS
WHERE NAME = CLASSES.CLASS;

SELECT CLASSES.*
FROM CLASSES LEFT JOIN SHIPS ON CLASSES.CLASS = SHIPS.CLASS
WHERE LAUNCHED IS NULL;

SELECT NAME, DISPLACEMENT, NUMGUNS, RESULT
FROM SHIPS JOIN CLASSES ON SHIPS.CLASS = CLASSES.CLASS
JOIN OUTCOMES ON SHIPS.NAME = OUTCOMES.SHIP
WHERE BATTLE = 'North Atlantic';