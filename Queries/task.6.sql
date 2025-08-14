-- Shows all values from table `online sales data`
SELECT *
FROM `online sales data`;


















-- Shows the month number for each order date
SELECT MONTHNAME(date) AS month, Date
FROM `online sales data`;









-- Groups orders by year and month with no of orders
SELECT 
    EXTRACT(YEAR FROM Date) AS order_year,
    EXTRACT(MONTH FROM Date) AS order_month,
    COUNT(*) AS total_orders
FROM `online sales data`
GROUP BY order_year, order_month;










-- Calculates monthly revenue
SELECT SUM(`Total Revenue`) AS revenue,
    EXTRACT(MONTH FROM Date) AS order_month
FROM `online sales data`
GROUP BY order_month;












-- Counts unique orders per month
SELECT COUNT(`Transaction ID`) AS volume,
    EXTRACT(MONTH FROM Date) AS order_month
FROM `online sales data`
GROUP BY order_month;










-- Shows months with highest revenue first
SELECT EXTRACT(MONTH FROM Date) AS order_month,SUM(`Total Revenue`)
FROM `online sales data`
GROUP BY order_month
ORDER BY `Total Revenue` DESC;













-- Only shows Jan–March 2024 data
SELECT 
    EXTRACT(YEAR FROM Date) AS order_year,
    EXTRACT(MONTH FROM Date) AS order_month,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
WHERE Date BETWEEN '2024-01-01' AND '2024-03-30'
GROUP BY order_year, order_month;