# Dashboard Build Plan

## Data Model
For the final Power BI model, split the flat CSV into:

- `Fact Sales`
- `Dim Customer`
- `Dim Product`
- `Dim Geography`
- `Dim Date`

Recommended relationships:

```text
Dim Customer  1 ─── * Fact Sales * ─── 1 Dim Product
Dim Geography 1 ─── * Fact Sales * ─── 1 Dim Date
```

Use single-direction filtering from dimensions to the fact table.

## Dim Date
Create a dedicated calendar table covering the minimum and maximum OrderDate.

Recommended columns:
- Date
- Year
- Quarter
- MonthNo
- Month
- YearMonth

Sort Month by MonthNo and YearMonth by a numeric YearMonth key.

## Page 1 — Executive Overview
**KPI cards:** Total Revenue, Total Profit, Profit Margin %, Total Orders, Total Customers.

**Charts:**
- Line chart: Revenue by Month
- Column chart: Revenue by Category
- Bar chart: Top 10 Products by Revenue
- Bar/column chart: Revenue by Region
- Slicer: Year, Region, Category, Segment

## Page 2 — Customer Analytics
- Revenue by Segment
- Top 10 Customers
- Customers by Region
- Average Order Value
- Orders per Customer
- Repeat-customer analysis

## Page 3 — Product Analytics
- Revenue by Category
- Profit by Category
- Units Sold by Product
- Top/Bottom Products
- Product Revenue Rank
- Profit Margin % by Product

## Page 4 — Regional Analytics
- Revenue by Region
- Profit by Region
- State-level performance
- City-level drill-down
- Region Revenue Rank
- Revenue trend with Region slicer

## Interactivity
Use slicers, drill-through, report-page tooltips, and bookmarks only where they improve analysis. Avoid overcrowding the report.

## Recruiter Story
The project should demonstrate the complete analytics workflow: raw data → transformation → dimensional model → DAX measures → interactive dashboard → business recommendations.

## Business Questions to Answer
1. What is the overall revenue and profit performance?
2. Which category contributes the most revenue?
3. Which products are high-revenue but low-margin?
4. Which customer segment is most valuable?
5. Which region generates the most profit?
6. Are sales growing over time?
7. Which customers/products should management prioritize?
