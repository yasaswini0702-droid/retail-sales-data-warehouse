-- Total Revenue by Region

SELECT
    region,
    SUM(sales_amount) AS total_revenue
FROM sales_fact
GROUP BY region
ORDER BY total_revenue DESC;

-- Monthly Revenue Trend

SELECT
    order_month,
    SUM(sales_amount) AS revenue
FROM sales_fact
GROUP BY order_month
ORDER BY order_month;
