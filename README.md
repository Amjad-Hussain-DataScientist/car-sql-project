
# Car data analysis using SQL queries in MYSQL

I use Car data to extract desired information using SQL queries in MySQL.
In this data set we have total 12 columns which are :
1. Name:tell us about the name of car.
2. year: it show year where company has stock
3. Selling_price : price at which they sell car.
4. km_driven: how many car is driven.
5. fuel: which type fuel particular car is using .
6. seller_type: it determine the nature of seller either it dealer or not .
7. transmission : show use either car is manual or automatic.
8. owner: tell us the histroy of owner either it is first or seccond owner and so on.
9. mileage: show us how many miles a car can be driven per litter.
10. Engine:it is telling about engine how many cc it is.
11. max_power
12. torque
13. seats: how many seater particular car is. 

Queries and Question :

create schema my_cars;

use my_cars;

show tables;

SELECT * FROM cars;

-- Q1. number of total cars present in table

select count(name) from cars ; -- total cars or records  are 7927

-- Q2. How many cars are ther in 2023

   select count(name) from cars
   where year='2023';    
    -- 6 cars be avaliable in 2023

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











## Authors

- [@amjadhussain](https://github.com/Amjad-Hussain-DataScientist)


## Installation

If you want to do same project,then you need to install following 
```bash
  MYSQL Server and workbench

```
    
# Hi, I am Amjad Hussain! 👋


## 🚀 About Me
I am a full stack data scientist.
I am working as a data analysts built a lot of project and drew insights from those projects according to demand,using different tools such as python, mysql, excel, PowerBI , Tableau.



## 🔗 Links
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://github.com/Amjad-Hussain-DataScientist?tab=projects)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)]()
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)]()


## 🛠 Skills
1. Python
2. SQL (MySql)
3. Ms Excel
4. PowerBI
5. Tableau
6. Machine Learning 
7. Web Scrabing


## Summary about my journey
👩‍💻 I graduated with Electronics Engineering.

🧠 I have done one year diploma in IT

👯‍♀️ I took part in different bootcamp of Data analytics and Data Science.

🤔 Completed different certifiates of Data Science and Data Analytics from UDEMY and other online plateform.And completed different projects using my skills

💬 Ask me about anything as you want to know about me

📫 You Can reach me by whatsapp(+923009155113) or by email(engramjad.hu@gmail.com)...

😄 Loading...

⚡️ Loading...


![Logo](https://github-readme-stats.vercel.app/api?username=Amjad-Hussain-DataScientist&&show_icons=true&title_color=ffffff&icon_color=bb2acf&text_color=daf7dc&bg_color=151515)
