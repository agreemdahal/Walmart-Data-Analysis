CREATE TABLE sales (
    Invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    Branch VARCHAR(5) NOT NULL,
    City VARCHAR(30) NOT NULL,
    Customer_type VARCHAR(50) NOT NULL,
    Gender VARCHAR(30) NOT NULL,
    Product_line VARCHAR(50) NOT NULL,
    Unit_price DECIMAL(10,2) NOT NULL,
    Quantity INT NOT NULL,
    Vat FLOAT NOT NULL,  
    Total DECIMAL(10,2) NOT NULL,
    Date DATETIME NOT NULL,
    Time TIME NOT NULL,
    Payment VARCHAR(50) NOT NULL,
    Cogs DECIMAL(10,2) NOT NULL,
    Gross_margin_Percentage FLOAT NOT NULL,  
    Gross_income DECIMAL(12,4) NOT NULL,
    Rating FLOAT NOT NULL  
);
