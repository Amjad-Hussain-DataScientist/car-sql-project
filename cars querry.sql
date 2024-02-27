create schema my_cars;
use my_cars;
show tables;

SELECT * FROM cars;

-- Q1. number of total cars present in table

select count(name) from cars ;-- total cars or records  are 7927

-- Q2. How many cars are ther in 2023
select count(name) from cars
where year='2023'; -- 6 cars be avaliable in 2023

-- Q3. how many cars were available in 2020,2021,2022

SELECT year,COUNT(*) FROM cars
WHERE year IN (2020,2021,2022)
group by year; -- there were 88 cars

-- Q4. number of cars by year

SELECT year, COUNT(year) as number_of_cars_by_year FROM cars
group by year
ORDER BY year DESC;

-- Q5. Number of diesel cars in 2020
SELECT year,fuel,count(*) as number_of_cars FROM cars
WHERE fuel = 'Diesel'
GROUP BY year
Having year=2020;

-- we can also do Q5. as
SELECT year,fuel,count(*) as number_of_diesel_cars FROM cars
WHERE fuel = 'Diesel' AND year =2020;

-- Q6. Number of petrol cars in 2020
-- method1
SELECT year,fuel,count(*) as number_of_cars FROM cars
WHERE fuel = 'petrol'
GROUP BY year
Having year=2020;

-- method2
SELECT year,fuel,count(*) as number_of_cars FROM cars
WHERE fuel = 'petrol' AND year =2020;

-- Q7 number of different fuels cars in years 
SELECT year,fuel, COUNT(*) AS number_of_cars
FROM cars
GROUP BY year,fuel;

-- Q8. number of cars using diesel ,petrol and cng by years

SELECT year,fuel,count(*) from cars
WHERE fuel IN ('Diesel','CNG','petrol')
GROUP BY year,fuel;

-- Q9 which year has the most   cars
SELECT year,count(*) as number_of_cars 
FROM cars
GROUP BY year
ORDER BY COUNT(*) DESC
LIMIT 1; -- 2017 HAS 1010 cars

-- Q10 which year has more than 100 cars
SELECT year,count(*) from cars
GROUP BY year HAVING COUNT(*)>100
ORDER BY COUNT(*) DESC;

-- Q11 ALL CARS COUNT DETAIL BETWEEN 2015 AND 2023
SELECT  count(*) as number_of_cars FROM cars
WHERE year BETWEEN 2015 AND 2023;

-- Q12. all cars details between 2015 to 2023
SELECT * FROM cars
WHERE year BETWEEN 2015 AND 2023