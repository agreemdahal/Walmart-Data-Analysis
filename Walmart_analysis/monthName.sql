-- Add a new column named month_name that contains the extracted months of the year on 
-- which the given transaction took place (Jan, Feb, Mar). 
-- Help determine which month of the year has the most sales and profit.

-- Primary logic
SELECT 
    date, MONTHNAME(date)
FROM
    sales;

-- Creating a new column Month Name
Alter table sales add column month_name varchar(30);

-- Updating Table
UPDATE sales 
SET 
    month_name = (MONTHNAME(date));

SELECT 
    *
FROM
    sales;



