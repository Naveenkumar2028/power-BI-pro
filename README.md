# Sales Performance & Customer Intelligence Dashboard

A recruiter-ready **Power BI Data Analytics project** focused on sales performance, customer behavior, product profitability, and regional trends.

## Business Objective
Build an interactive BI solution that helps management answer:
- How are revenue, orders, customers, and profit performing?
- Which products and categories drive revenue and margin?
- Which customers generate the most value?
- Which regions are growing or underperforming?
- How does performance change month-over-month and year-over-year?

## Tech Stack
- **Power BI Desktop** — dashboarding and reporting
- **Power Query (M)** — data cleaning and transformation
- **DAX** — business measures and time intelligence
- **Star Schema** — dimensional data modeling
- **SQL** — analytical validation queries
- **CSV** — source data

## Data Model
The target model follows a star schema:

`Fact Sales` → `Dim Date`, `Dim Customer`, `Dim Product`, `Dim Geography`

### Fact Sales
OrderID, OrderDate, CustomerID, ProductID, GeographyID, Quantity, UnitPrice, DiscountPct, CostPerUnit

### Dimensions
- **Dim Customer:** CustomerID, CustomerName, Segment
- **Dim Product:** ProductID, ProductName, Category
- **Dim Geography:** GeographyID, Region, State, City
- **Dim Date:** Date, Year, Quarter, MonthNo, Month, YearMonth

## Dashboard Pages
### 1. Executive Overview
KPIs: Revenue, Profit, Orders, Customers, Profit Margin, YoY Growth

Visuals: monthly revenue trend, revenue by category, top products, regional performance, sales/profit summary.

### 2. Customer Analytics
Customer segmentation, revenue by segment, repeat customers, top customers, average order value, customer contribution.

### 3. Product Analytics
Top/bottom products, category revenue, quantity sold, gross profit, profit margin, product contribution.

### 4. Regional Analytics
Revenue and profit by region/state/city, regional growth, map-ready geography fields, regional ranking.

## Core DAX Measures
```DAX
Total Revenue = SUMX('Fact Sales', 'Fact Sales'[Quantity] * 'Fact Sales'[UnitPrice] * (1 - 'Fact Sales'[DiscountPct]))

Total Cost = SUMX('Fact Sales', 'Fact Sales'[Quantity] * 'Fact Sales'[CostPerUnit])

Total Profit = [Total Revenue] - [Total Cost]

Profit Margin % = DIVIDE([Total Profit], [Total Revenue])

Total Orders = DISTINCTCOUNT('Fact Sales'[OrderID])

Total Customers = DISTINCTCOUNT('Fact Sales'[CustomerID])

Total Quantity = SUM('Fact Sales'[Quantity])

Average Order Value = DIVIDE([Total Revenue], [Total Orders])

Revenue LY = CALCULATE([Total Revenue], SAMEPERIODLASTYEAR('Dim Date'[Date]))

YoY Growth % = DIVIDE([Total Revenue] - [Revenue LY], [Revenue LY])
```

## Project Workflow
1. Load CSV data into Power BI.
2. Clean and validate data with Power Query.
3. Create dimension tables and a star-schema model.
4. Create relationships using surrogate/business keys.
5. Build a proper Date table.
6. Add DAX measures for KPIs and time intelligence.
7. Build four dashboard pages.
8. Add slicers, drill-through, tooltips, and bookmarks where useful.
9. Validate totals against SQL queries.
10. Export dashboard screenshots and document business insights.

## Repository Structure
```text
power-BI-pro/
├── README.md
├── data/
│   └── sales_data.csv
├── dax/
│   └── measures.dax
├── power-query/
│   └── transformations.m
├── sql/
│   └── validation_queries.sql
└── docs/
    └── dashboard_plan.md
```

## Key Skills Demonstrated
Power BI, Power Query, DAX, data modeling, star schema, SQL analytics, KPI design, time intelligence, data cleaning, business storytelling, and dashboard design.

## Note
The `.pbix` file is intentionally kept outside Git history because Power BI Desktop files are binary. The repository contains the reproducible dataset, transformation logic, DAX, SQL validation, dashboard plan, and documentation needed to recreate the report.
