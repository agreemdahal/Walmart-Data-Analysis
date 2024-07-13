-- SALES

-- Number of sales made in each time of the day per weekday

SELECT 
    time_of_day, COUNT(*) AS total_sales
FROM
    sales
WHERE
    day_name = 'friday'
GROUP BY time_of_day
ORDER BY total_sales DESC;

-- Which of the customer types brings the most revenue?

SELECT 
    customer_type, SUM(total) AS total_revenue
FROM
    sales
GROUP BY customer_type
ORDER BY total_revenue DESC;

-- Which city has the largest tax percent/ VAT (Value Added Tax)?

SELECT 
    city, ROUND(AVG(Vat), 2) AS Largest_vat
FROM
    sales
GROUP BY city
ORDER BY Largest_vat DESC;

-- Which customer type pays the most in VAT?

SELECT 
    customer_type as cst, ROUND(AVG(Vat), 2) AS Largest_vat
FROM
    sales
GROUP BY cst
ORDER BY Largest_vat DESC;
