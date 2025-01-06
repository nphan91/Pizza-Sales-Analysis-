select *
from [dbo].[pizza_sales];

-- Total revenue
SELECT SUM([total_price]) AS 'Total_Revenue'
FROM pizza_sales;

-- Average Order Value: Total Revenue/ Total number of orders
SELECT  SUM([total_price]) / COUNT(DISTINCT([order_id])) AS 'Average_Order_Value'
FROM pizza_sales

-- Total Pizzas Sold
ALTER TABLE [dbo].[pizza_sales]
ALTER COLUMN [quantity] INT

SELECT SUM([quantity]) AS 'Total_pizza_sold' 
FROM [dbo].[pizza_sales]

-- Total orders 
SELECT COUNT(DISTINCT([order_id])) AS 'Total_Orders'
FROM pizza_sales

--Average Pizza per order: Total number of Pizza sold/ total number of orders
SELECT 
    CAST(
        CAST(SUM([quantity]) AS DECIMAL(10, 2)) / 
        CAST(COUNT(DISTINCT [order_id]) AS DECIMAL(10, 2)) 
    AS DECIMAL(10, 2)) AS 'Average_Pizz_pe_order'
FROM pizza_sales;

