use car_sales;
select * from cs;
#data exploration
#data querying

#1)Display the first 10 rows of the dataset:
SELECT *
FROM cs
LIMIT 10;

#2)Select only the car make and sale price columns:
SELECT car_make, sale_price
FROM cs;

#3)Select only the sales made by salesperson named Jennifer Morris:
SELECT *
FROM cs
WHERE salesperson = 'Jennifer Morris';

#4)Return the car models sold in the year 2022 remove duplicate values
SELECT DISTINCT car_model
FROM cs
WHERE car_year = 2022;

#5)Select only the sales where the commission earned is greater than 5000:
SELECT *
FROM cs
WHERE commission_earned > 5000;

#6)Show the most five successful salespeople:
SELECT salesperson, COUNT(*) AS num_sales
FROM cs
GROUP BY salesperson
ORDER BY num_sales DESC
limit 5;

#7)Select the top two best-selling car models skipping first and second:
SELECT car_model, COUNT(*) AS sales_count
FROM cs
GROUP BY car_model
ORDER BY sales_count DESC
LIMIT 2 offset 2;

#8)Show the total sales revenue for each car make:
SELECT car_make, SUM(sale_price) AS total_sales
FROM cs
GROUP BY car_make
ORDER BY total_sales DESC;

#9)Show the average sale price per year for each car make:
SELECT car_make, car_year, AVG(sale_price) AS avg_sale_price
FROM cs
GROUP BY car_make, car_year
ORDER BY car_make, car_year;

#10)Show the most popular car models for each car make:
SELECT car_make, car_model, COUNT(*) AS num_sales
FROM cs
GROUP BY car_make, car_model
ORDER BY num_sales DESC;

#11)Show the total commission earned by each salesperson:
SELECT salesperson, SUM(commission_earned) AS total_commission
FROM cs
GROUP BY salesperson
ORDER BY total_commission DESC;

#12)Show the top 5 customers by total spending:
SELECT customer_name, SUM(sale_price) AS total_spending
FROM cs
GROUP BY customer_name
ORDER BY total_spending DESC
LIMIT 5;

#13)Show the most popular car models for each car make, along with their average sale price:
SELECT car_make, car_model, AVG(sale_price) AS avg_sale_price, COUNT(*) AS num_sales
FROM cs
GROUP BY car_make, car_model
ORDER BY num_sales DESC;

#14)Show the top 5 salespeople by average commission rate:
SELECT salesperson, AVG(commission_rate) AS avg_commission_rate
FROM cs
GROUP BY salesperson
ORDER BY avg_commission_rate DESC
LIMIT 5;























