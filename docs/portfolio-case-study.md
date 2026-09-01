# Portfolio Case Study — Sales Intelligence

## 1. Business Problem
Management needs a single view of sales performance to understand revenue, profitability, customer value, product contribution and regional performance.

The challenge is not simply reporting sales totals. The analysis must expose **where revenue comes from, where profit is created, and which areas deserve attention**.

## 2. Analytical Approach

```text
Raw transactions
      ↓
Power Query cleaning
      ↓
Star-schema dimensional model
      ↓
DAX measures + time intelligence
      ↓
SQL validation
      ↓
Interactive executive dashboard
      ↓
Business recommendations
```

## 3. KPI Framework
- Net Revenue — sales after discounts
- Gross Profit — net revenue minus product cost
- Profit Margin — profit as a percentage of revenue
- Orders — distinct transactions
- Customers — distinct active customers
- Average Order Value — revenue per order
- MoM Growth — change versus previous month
- YoY Growth — change versus previous year when prior-year data is available
- Target Achievement — performance against a defined management target

## 4. Decision Framework
The dashboard is designed to answer five management questions:

1. **Growth:** Is revenue increasing or declining?
2. **Profitability:** Which categories and regions create the most profit?
3. **Product:** Which products deserve more attention or optimization?
4. **Customers:** Which segments and accounts drive the largest share of revenue?
5. **Action:** Where should management focus next?

## 5. Target vs Actual
The repository includes a demonstration target measure using a 10% growth assumption. This is explicitly a **portfolio modeling assumption**, not a claim about a real company's target. In a production BI solution, the target should come from an approved monthly target table.

## 6. Data Quality Checks
Before dashboarding, validate:
- Order IDs are present and unique at transaction level.
- Dates parse correctly.
- Quantity, price and cost are numeric and non-negative.
- Discount percentages fall within an expected range.
- Customer, product and geography keys map correctly.
- Power BI totals reconcile with SQL validation queries.

## 7. Recruiter Takeaway
This project demonstrates an end-to-end analytics workflow rather than only visualization: **data preparation → dimensional modeling → DAX → validation → dashboard → decision support**.

### Skills demonstrated
`Power BI` · `Power Query` · `DAX` · `SQL` · `Data Modeling` · `Star Schema` · `KPI Design` · `Business Analysis` · `Data Storytelling`

## 8. Interview Talking Points
- Why a star schema is preferred for BI reporting.
- Why measures are preferable to unnecessary calculated columns.
- How `DATEADD` and `SAMEPERIODLASTYEAR` support time intelligence.
- How SQL was used to validate Power BI calculations.
- Why targets should be stored as data rather than hard-coded in production.
- How dashboard visuals were selected based on business questions.
