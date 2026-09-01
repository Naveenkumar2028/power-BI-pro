# Sales Performance & Customer Intelligence Dashboard

> **From raw sales to clear decisions.** A recruiter-facing Business Intelligence case study built to demonstrate an end-to-end Data Analytics workflow.

## 🚀 Live Portfolio Dashboard

**[Open the interactive dashboard](https://naveenkumar2028.github.io/power-BI-pro/)**

The web demo mirrors the analytical story of the Power BI project and is designed for quick recruiter review.

## 🎯 Business Problem
Management needs one view of sales performance to understand:
- Revenue and profit performance
- Month-over-month movement and growth opportunities
- Product and category contribution
- Customer segment value and concentration
- Regional profitability
- Target achievement and management priorities

## 🧰 Tech Stack
| Layer | Technology |
|---|---|
| BI & Visualization | **Power BI Desktop** |
| Transformation | **Power Query (M)** |
| Analytics | **DAX** |
| Validation | **SQL** |
| Modeling | **Star Schema / Dimensional Modeling** |
| Source | **CSV** |
| Portfolio Demo | **HTML, CSS, JavaScript, GitHub Pages** |

## 🧠 Analytical Workflow

```text
Raw sales data
      ↓
Power Query cleaning & validation
      ↓
Star-schema data model
      ↓
DAX KPI + time-intelligence measures
      ↓
SQL reconciliation
      ↓
Interactive Power BI report
      ↓
Business insights & recommendations
```

## ⭐ Dashboard Experience
The portfolio dashboard is organized around an executive decision flow:

1. **Executive Overview** — revenue, profit, margin, orders and customers
2. **Performance Overview** — revenue trend, category performance, regional profit and top products
3. **Customer & Portfolio Mix** — segment contribution and concentration
4. **Decision Signals** — category, region and product leaders
5. **Executive Insights** — business-oriented interpretation of the metrics

Filters for **Region, Category and Customer Segment** update the interactive portfolio view.

## 📐 Data Model
The target Power BI model follows a star schema:

```text
             Dim Date
                 │
Dim Customer ─ Fact Sales ─ Dim Product
                 │
          Dim Geography
```

### Fact Sales
`OrderID`, `OrderDate`, `CustomerID`, `ProductID`, `GeographyID`, `Quantity`, `UnitPrice`, `DiscountPct`, `CostPerUnit`

### Dimensions
- **Dim Customer:** CustomerID, CustomerName, Segment
- **Dim Product:** ProductID, ProductName, Category
- **Dim Geography:** GeographyID, Region, State, City
- **Dim Date:** Date, Year, Quarter, MonthNo, Month, YearMonth

## 📊 KPI Framework
- **Net Revenue** — sales after discounts
- **Gross Profit** — net revenue minus cost
- **Profit Margin** — profit / revenue
- **Orders** — distinct transactions
- **Customers** — distinct active customers
- **Average Order Value** — revenue / orders
- **MoM Growth %** — current month versus previous month
- **YoY Growth %** — current period versus prior year when prior-year data exists
- **Target Achievement %** — performance against the management target assumption

## 💡 Business Questions
1. Which category generates the most revenue?
2. Which products create the most profit?
3. Which region is the strongest contributor to profit?
4. Which customer segment drives the largest revenue share?
5. How is monthly revenue moving?
6. Where should management prioritize attention?

## 🧪 Validation
Power BI calculations are supported by SQL validation queries covering:
- Total revenue, cost and profit
- Category performance
- Regional performance
- Customer ranking
- Monthly sales trend
- Product performance

## 📁 Repository Structure

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
    ├── dashboard_plan.md
    └── portfolio-case-study.md
```

## 👨‍💻 Recruiter Value
This project demonstrates more than dashboard design. It shows the complete analytics lifecycle:

**Data cleaning → Data modeling → DAX → SQL validation → Visualization → Business storytelling**

### Interview topics demonstrated
- Why star schema is effective for BI
- Measures vs calculated columns
- DAX time intelligence
- Power Query transformations
- SQL reconciliation of BI metrics
- KPI and dashboard design
- Turning metrics into actionable recommendations

## 📌 Portfolio Note
The `.pbix` file is binary and is intentionally not stored in Git history. The repository contains the source data, transformation logic, DAX measures, SQL validation and documentation needed to reproduce the analytical solution.

See the detailed case study in [`docs/portfolio-case-study.md`](docs/portfolio-case-study.md).
