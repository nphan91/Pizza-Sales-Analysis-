# Pizza Sales Analysis using SQL and Power BI
![Pizza Image](https://github.com/nphan91/Pizza-Sales-Analysis-/blob/main/Pizza%20Image.png)
### Overview
This project focuses on analyzing pizza sales data using SQL and Power BI to uncover key performance metrics and business insights. The objective is to evaluate sales performance, customer purchasing behavior, and overall trends. By leveraging SQL for data extraction and transformation and Power BI for visualization, the analysis delivers actionable insights to enhance decision-making and optimize operations.  

### Objectives
1. Calculate the total revenue generated from pizza sales.  
2. Determine the average order value (AOV) by dividing total revenue by the total number of orders.  
3. Assess the total number of pizzas sold.  
4. Analyze the total number of unique orders placed.  
5. Compute the average number of pizzas sold per order by dividing the total pizzas sold by the total number of orders.

### Data Link: 

## This analysis serves as a foundation for identifying sales trends, understanding customer preferences, and driving business strategies.  

### SQL Queries
## View Pizza Sales Data
```sql
SELECT *  
FROM [dbo].[pizza_sales];
```
### Total Revenue
```sql
SELECT SUM([total_price]) AS 'Total_Revenue'  
FROM pizza_sales;
```
### Average Order Value (AOV)
```sql
SELECT SUM([total_price]) / COUNT(DISTINCT([order_id])) AS 'Average_Order_Value'  
FROM pizza_sales;
```
### Total Pizzas Sold
```sql
ALTER TABLE [dbo].[pizza_sales]  
ALTER COLUMN [quantity] INT;

SELECT SUM([quantity]) AS 'Total_Pizzas_Sold'  
FROM [dbo].[pizza_sales];
```
### Total Orders
```sql
SELECT COUNT(DISTINCT([order_id])) AS 'Total_Orders'  
FROM pizza_sales;
```
### Average Pizzas per Order
```sql
SELECT 
    CAST(
        CAST(SUM([quantity]) AS DECIMAL(10, 2)) / 
        CAST(COUNT(DISTINCT [order_id]) AS DECIMAL(10, 2)) 
    AS DECIMAL(10, 2)) AS 'Average_Pizzas_per_Order'  
FROM pizza_sales;
```
