SELECT cast( AVG(SPEED) AS integer)
FROM pc;

select convert(decimal(8,2), avg(speed))
from pc;

SELECT MAKER, AVG(SCREEN)
FROM product, laptop
WHERE product.model = laptop.model
GROUP BY MAKER;

SELECT CONVERT(decimal(8, 2), AVG(SPEED)) AS AvgSpeed
FROM laptop
WHERE price > 1000;

SELECT MAKER, CONVERT(decimal(8, 2), AVG(price)) AS AvgPrice
FROM product JOIN pc ON product.model=pc.model
WHERE maker = 'A'
GROUP BY MAKER;

SELECT MAKER, AVG(PRICE)
FROM (SELECT MAKER, PRICE
		FROM product P, PC
		WHERE p.model = PC.model AND MAKER = 'B'
		UNION ALL SELECT MAKER, PRICE
					FROM PRODUCT P, laptop L
					WHERE P.model = L.model AND maker = 'B' ) T
GROUP BY maker;

SELECT maker, avg(price) as AvgPrice
from product join
	(select model, price
		from pc union all 
			select model, price
			from laptop) T
	on product.model = T.model
where maker = 'B'
group by maker;

SELECT SPEED, AVG(PRICE)
FROM pc
GROUP BY speed;

select maker, COUNT(pc.model) as num_of_pc
from product, pc
where  product.model = pc.model
group by maker
having COUNT(pc.model) >= 3;

select maker, MAX(price) as price
from product join pc on product.model = pc.model
where price >= ALL(select price from pc)
group by maker;

select speed, avg(price) as AvgPrice 
from pc
where speed > 800
group by speed;

select maker, convert(decimal(8, 2), avg(hd)) as AvgHD
from product join pc on product.model = pc.model
where maker in (select maker from product join printer on product.model = printer.model)
group by maker;

