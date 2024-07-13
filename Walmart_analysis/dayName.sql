-- Add a new column named day_name that contains the extracted days of the week on which the given 
-- transaction took place (Mon, Tue, Wed, Thur, Fri). 
-- This will help answer the question on which week of the day each branch is busiest.


-- logic to build day name--  
SELECT 
    date, DAYNAME(date)
FROM
    sales;

-- Adding day_name column 
Alter Table sales add column Day_Name varchar(30);

-- Updating the table with values 
UPDATE sales 
SET 
    Day_Name = (DAYNAME(date));

SELECT 
    *
FROM
    sales;
