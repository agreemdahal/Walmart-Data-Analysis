-- Fetaure Enginering-- 
--  Add a new column named time_of_day to give insight of sales in the Morning, Afternoon and Evening. 
--  This will help answer the question on which part of the day most sales are made.
 
SELECT 
    time,
    (CASE
        WHEN `time` BETWEEN '00:00:00' AND '12:00:00' THEN 'Morning'
        WHEN `time` BETWEEN '12:10:00' AND '17:00:00' THEN 'Afternoon'
        ELSE 'Evening'
    END) AS time_of_date
FROM
    sales;
-- Adding the column-- 
Alter Table sales add column time_of_day varchar(20);
-- For Runnig Update  Command-- 
set SQL_SAFE_UPDATES = 0;

-- Updating the Database -- 
UPDATE sales 
SET 
    time_of_day = (CASE
        WHEN `time` BETWEEN '00:00:00' AND '12:00:00' THEN 'Morning'
        WHEN `time` BETWEEN '12:10:00' AND '17:00:00' THEN 'Afternoon'
        ELSE 'Evening'
    END);
-- New Database-- 
SELECT 
    *
FROM
    sales;
