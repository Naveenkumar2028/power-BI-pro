-- 1. Revenue, cost and profit validation
SELECT
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) AS TotalRevenue,
    SUM(Quantity * CostPerUnit) AS TotalCost,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) - SUM(Quantity * CostPerUnit) AS TotalProfit
FROM sales_data;

-- 2. Revenue by category
SELECT
    Category,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) AS Revenue,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) - SUM(Quantity * CostPerUnit) AS Profit
FROM sales_data
GROUP BY Category
ORDER BY Revenue DESC;

-- 3. Revenue by region
SELECT
    Region,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) AS Revenue,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) - SUM(Quantity * CostPerUnit) AS Profit
FROM sales_data
GROUP BY Region
ORDER BY Revenue DESC;

-- 4. Top customers
SELECT
    CustomerID,
    CustomerName,
    Segment,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) AS Revenue
FROM sales_data
GROUP BY CustomerID, CustomerName, Segment
ORDER BY Revenue DESC;

-- 5. Monthly sales trend
SELECT
    SUBSTRING(OrderDate, 1, 7) AS YearMonth,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) AS Revenue
FROM sales_data
GROUP BY SUBSTRING(OrderDate, 1, 7)
ORDER BY YearMonth;

-- 6. Product performance
SELECT
    ProductID,
    ProductName,
    Category,
    SUM(Quantity) AS UnitsSold,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) AS Revenue,
    SUM(Quantity * UnitPrice * (1 - DiscountPct)) - SUM(Quantity * CostPerUnit) AS Profit
FROM sales_data
GROUP BY ProductID, ProductName, Category
ORDER BY Revenue DESC;
