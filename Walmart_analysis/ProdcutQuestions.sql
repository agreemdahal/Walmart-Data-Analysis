-- Product 

-- How many unique product lines does the data have?

SELECT count(DISTINCT
    product_line) as unique_product_line
FROM
    sales;

-- What is the most common payment method?

SELECT 
    payment, COUNT(Payment)
FROM
    sales
GROUP BY payment;

-- What is the most selling product line?

SELECT 
    product_line, COUNT(product_line) AS cnt
FROM
    sales
GROUP BY product_line
ORDER BY cnt DESC;

-- What is the total revenue by month?

SELECT 
    month_name AS month, SUM(total) AS total_revenue
FROM
    sales
GROUP BY month_name
ORDER BY total_revenue DESC;

-- What month had the largest COGS?

SELECT 
    month_name AS month, SUM(cogs) AS total_cogs
FROM
    sales
GROUP BY month_name
ORDER BY total_cogs DESC;

-- What product line had the largest revenue?

SELECT 
    product_line AS pdt, SUM(total) AS total_revenue
FROM
    sales
GROUP BY product_line
ORDER BY total_revenue DESC;

-- What is the city with the largest revenue?

SELECT 
    city, 
    branch,
    SUM(total) AS total_revenue
FROM
    sales
GROUP BY city,branch
ORDER BY total_revenue DESC;


-- What product line had the largest VAT?

SELECT 
    product_line AS pdt, AVG(Vat) AS avg_tax
FROM
    sales
GROUP BY pdt
ORDER BY avg_tax DESC;

-- Fetch each product line and add a column to those product line showing "Good", "Bad". 
-- Good if its greater than average sales




-- Which branch sold more products than average product sold?

SELECT 
    branch, SUM(quantity) AS qty
FROM
    sales
GROUP BY branch
HAVING SUM(quantity) > (SELECT 
        AVG(quantity)
    FROM
        sales)
ORDER BY qty DESC;

-- What is the most common product line by gender?

SELECT 
    gender, product_line, COUNT(gender) AS total_cnt
FROM
    sales
GROUP BY gender , product_line
ORDER BY total_cnt DESC;

-- What is the average rating of each product line?

SELECT 
    Product_line, AVG(rating) AS rate
FROM
    sales
GROUP BY Product_line
ORDER BY rate DESC;






    
 