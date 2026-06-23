-- eBay E-Commerce Sales Analysis
-- File 3: Analysis Queries
-- Author: Monika Anjali K

USE ebay_sales;

-- =============================================
-- QUERY 1: Monthly Sales Trend (12 months)
-- =============================================
SELECT 
    MONTH(order_date) AS month_number,
    MONTHNAME(order_date) AS month_name,
    YEAR(order_date) AS year,
    SUM(revenue) AS total_revenue,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date), MONTHNAME(order_date)
ORDER BY month_number;

-- =============================================
-- QUERY 2: Q4 Revenue Spike vs Other Quarters
-- =============================================
SELECT 
    quarterly_revenue.quarter,
    quarterly_revenue.total_revenue,
    ROUND(
        (quarterly_revenue.total_revenue - avg_other.avg_revenue) 
        / avg_other.avg_revenue * 100, 2
    ) AS percentage_above_average
FROM (
    SELECT 
        CASE 
            WHEN MONTH(order_date) BETWEEN 1 AND 3 THEN 'Q1'
            WHEN MONTH(order_date) BETWEEN 4 AND 6 THEN 'Q2'
            WHEN MONTH(order_date) BETWEEN 7 AND 9 THEN 'Q3'
            ELSE 'Q4'
        END AS quarter,
        SUM(revenue) AS total_revenue
    FROM orders
    GROUP BY quarter
) AS quarterly_revenue
CROSS JOIN (
    SELECT AVG(q_total) AS avg_revenue
    FROM (
        SELECT 
            CASE 
                WHEN MONTH(order_date) BETWEEN 1 AND 3 THEN 'Q1'
                WHEN MONTH(order_date) BETWEEN 4 AND 6 THEN 'Q2'
                WHEN MONTH(order_date) BETWEEN 7 AND 9 THEN 'Q3'
                ELSE 'Q4'
            END AS quarter,
            SUM(revenue) AS q_total
        FROM orders
        GROUP BY quarter
    ) AS all_quarters
    WHERE quarter != 'Q4'
) AS avg_other
ORDER BY quarterly_revenue.total_revenue DESC;

-- =============================================
-- QUERY 3: Product Category Rankings by Revenue
-- =============================================
SELECT 
    p.category,
    SUM(o.revenue) AS total_revenue,
    COUNT(o.order_id) AS total_orders,
    RANK() OVER (ORDER BY SUM(o.revenue) DESC) AS revenue_rank
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- =============================================
-- QUERY 4: Flagging Underperforming Categories
-- =============================================
SELECT 
    p.category,
    COUNT(o.order_id) AS total_orders,
    COUNT(r.return_id) AS total_returns,
    ROUND(COUNT(r.return_id) * 100.0 / COUNT(o.order_id), 2) AS return_rate_percent,
    SUM(o.revenue) AS total_revenue,
    CASE 
        WHEN COUNT(r.return_id) * 100.0 / COUNT(o.order_id) >= 40 THEN 'Flagged - High Returns'
        WHEN COUNT(r.return_id) * 100.0 / COUNT(o.order_id) >= 20 THEN 'Watch - Medium Returns'
        ELSE 'Healthy'
    END AS status
FROM orders o
JOIN products p ON o.product_id = p.product_id
LEFT JOIN returns r ON o.order_id = r.order_id
GROUP BY p.category
ORDER BY return_rate_percent DESC;