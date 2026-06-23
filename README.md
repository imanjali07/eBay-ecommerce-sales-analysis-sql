🛒 eBay E-Commerce Sales Analysis (SQL)

Project Overview
Analyzed 12 months of eBay e-commerce sales data using SQL to uncover revenue trends, 
rank product categories, and flag underperforming categories based on return rates.
This project simulates a real-world business analyst workflow — from raw data to 
actionable business recommendations.

Business Objectives
- Identify monthly and quarterly revenue trends across 12 months
- Rank 20+ product categories by total revenue
- Flag underperforming categories with high return rates
- Provide data-driven business recommendations to stakeholders

Tools & Technologies
| Tool | Usage |
|------|-------|
| MySQL | Database creation, querying, analysis |
| SQL | JOINs, GROUP BY, Subqueries, Aggregations, Window Functions |
| GitHub | Version control and project showcase |

Database Structure
Tables Used:
1. products — product_id, product_name, category

2. orders — order_id, product_id, order_date, quantity, unit_price, revenue

3. returns — return_id, order_id, return_date, reason

Key Insights Found

🔹 1. Monthly Sales Trend
- Sales were low in Q1–Q3 ranging from ₹186 to ₹1,960 per month
- Q4 saw a massive revenue surge driven by festive season demand

🔹 2. Q4 Revenue Spike
| Quarter | Revenue | vs Average |
|---------|---------|------------|
| Q4 | ₹18,275 | +742% above average 🔥 |
| Q2 | ₹2,765 | +27% above average |
| Q1 | ₹2,530 | +16% above average |
| Q3 | ₹1,216 | -44% below average ⚠️ |

🔹 3. Top Product Categories by Revenue
| Rank | Category | Revenue |
|------|----------|---------|
| 1 | Electronics | ₹17,000 |
| 2 | Footwear | ₹2,530 |
| 3 | Appliances | ₹1,900 |
| 4 | Furniture | ₹1,000 |
| 5 | Clothing | ₹675 |

🔹 4. Flagged Underperforming Categories
| Category | Return Rate | Status |
|----------|-------------|--------|
| Clothing | 100% | 🔴 Flagged |
| Beauty | 100% | 🔴 Flagged |
| Garden | 100% | 🔴 Flagged |
| Books | 50% | 🟡 Watch |
| Toys | 50% | 🟡 Watch |

Business Recommendations
1. Stock up Electronics before Q4 — it contributes 69% of total annual revenue
2. Investigate Clothing, Beauty & Garden — 100% return rate means zero net revenue
3. Run Q3 promotions — Q3 is the weakest quarter and needs a demand boost
4. Focus on Footwear & Appliances — strong revenue with zero returns, high growth potential

Project Files
| File | Description |
|------|-------------|
| `create_tables.sql` | SQL script to create the database and tables |
| `insert_data.sql` | SQL script to insert all sample data |
| `analysis_queries.sql` | All 4 analysis queries with comments |

How to Run This Project
1. Install MySQL Workbench
2. Run `create_tables.sql` to set up the database
3. Run `insert_data.sql` to load the data
4. Run `analysis_queries.sql` to see all insights

---

Author
*Monika Anjali K*
Data Analyst | SQL | Python | Power BI | 📍 Bangalore, India | Open to Data roles
[LinkedIn](www.linkedin.com/in/monika-anjali-k) | [GitHub](https://github.com/imanjali07)
