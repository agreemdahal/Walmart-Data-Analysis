-- Customer Questions

-- How many unique customer types does the data have?

SELECT DISTINCT
    customer_type
FROM
    sales;
    
-- How many unique payment methods does the data have?

SELECT DISTINCT
    payment
FROM
    sales;

-- Which customer type buys the most?
SELECT 
    customer_type, COUNT(customer_type) AS cst
FROM
    sales
GROUP BY customer_type
ORDER BY cst DESC;

-- What is the gender of most of the customers?

SELECT 
    Gender, COUNT(gender) AS gn
FROM
    sales
GROUP BY gender
ORDER BY gn DESC;
    
-- What is the gender distribution per branch?

SELECT 
    Gender, COUNT(gender) AS gn
FROM
    sales
WHERE
    branch = 'A'
GROUP BY gender
ORDER BY gn DESC;

-- Which time of the day do customers give most ratings?

SELECT 
    time_of_day, round(AVG(rating), 2) AS rate
FROM
    sales
-- WHERE
--     Time_of_day = 'Evening'
GROUP BY time_of_day
ORDER BY rate DESC;

-- Which time of the day do customers give most ratings per branch?

SELECT 
    time_of_day, round(AVG(rating), 2) AS rate
FROM
    sales
WHERE
    branch = 'C'
GROUP BY time_of_day
ORDER BY rate DESC;

-- Which day fo the week has the best avg ratings?

SELECT 
    day_name, round(AVG(rating), 2) AS rate
FROM
    sales
GROUP BY day_name
ORDER BY rate DESC; 

-- Which day of the week has the best average ratings per branch?

SELECT 
    day_name, round(AVG(rating), 2) AS rate
FROM
    sales
WHERE
    branch = 'C'
GROUP BY day_name
ORDER BY rate DESC; 

